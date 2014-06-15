console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function(lineName, callback){
    var that = this;
    $.ajax({
      url: '/lines/'+lineName,
      dataType: 'json',
      success: function(data){
        that.networkData[lineName] = data; 
        callback();
      }  
    })
    return this;
  }
}

function displayStations(lineName, listCssSelector){
  var stationList = $(listCssSelector);
  stationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx, ele){
    var newLi = $('<div>').html(ele.address);
    stationList.append(newLi).css('opacity', 0);
    stationList.animate({
      opacity: 1,
    }, 1500);
  })
}

$(function(){
  $('.line').each(function(idx, div){
    var lineColor = $(div).attr('data-color'); //data('color')
    $(div).css('opacity', 0);
    $(div).css('background-color', lineColor);
    $(div).animate({
      opacity: 1,
    }, 2000);
  })

  $('.line').on('click', function(e){
    var lineName = e.target.innerText;
//  $('.line-name').on('click', function(e){
//    var lineName = $(e.target).text().trim();
    mta.getLineData(lineName, function(){
      displayStations(lineName, '.stations-list');  
    })
  })
})
