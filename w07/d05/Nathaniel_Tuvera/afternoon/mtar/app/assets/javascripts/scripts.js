
console.log('Let Us Put Stuff Here')


var mta = {
  networkData: {},
  getLineData: function( lineName, callback){
    var that    = this;
    var url     = '/lines/' + lineName;

    // Code will go here to make an ajax request and place the info into the mta's networkData
    $.ajax({
      url: url,
      dataType: 'json',
      success: function(data){
        that.networkData[lineName] = data;        // that.networkData[data.info.name] = data;
        callback();
      }
    })
    return this;    //method chaining needed for later, use this
  }
}

function displayStationList(lineName, listCssSelector){
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx, ele){
    var $newLi   = $('<li>').html(ele.address).fadeIn(500);
    $lineStationList.append($newLi);
  })
}

$(function(){

  $('.line').on('click', function(e){

    // Obtain the line's name
    var lineName = e.target.innerText;

    // var lineLi = $(e.target).parent();
    // var lineName = lineLi.data('name');

    mta.getLineData(lineName, function(){
      displayStationList(lineName, '.stations-list')
    })
  })



  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate({
      opacity: 1,
    }, 1000)
})
})
