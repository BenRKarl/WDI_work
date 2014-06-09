console.log("A friendly message from scripts.js");


var mta = {
  networkData: {},

  getLineData: function(lineName, callback) {
    var that = this;
    var url = '/lines/'+ lineName;


    $.ajax({
      url: url,
      dataType: 'json',
      success: function(data) {

        that.networkData[lineName] = data;
        callback()
      }
    })
    return this;
  }

};

function displayStationList (lineName, listCssSelector) {
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(i, ele) {
    var $newLi = $('<li>').html(ele.address);
    $lineStationList.append($newLi);
  })
}






$(function(){

  $('.line').on('click', function(e){

    var lineName = e.target.innerText;

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
    }, 500)
  })


})
