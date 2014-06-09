
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function(lineName, callback) {
    var that = this;
    $.ajax({
      url: '/lines/'+lineName,
      dataType: 'json',
      success: function(data) {
        that.networkData[lineName] = data;
        callback();
      }
    });
  }
};

function displayStationList(lineName, listCssSelector){
  $(listCssSelector).html('');
  var stationArray = mta.networkData[lineName].stations;
  $.each(stationArray, function(index, station) {
    var $addressLi = $('<li>').text(station.address);
    $(listCssSelector).append($addressLi);
  });
}

$(function(){
  $('.line').on('click', function(){
    lineName = $(this).data().name;
    mta.getLineData(lineName, function(){
      displayStationList(lineName, '.stations-list');
    });
  });


  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate({
      opacity: 1,
    }, 500)
  })
});
