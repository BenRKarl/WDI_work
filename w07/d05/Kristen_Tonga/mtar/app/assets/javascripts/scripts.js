
console.log('Breath... Its sunny.')

//MODEL
// function createLine(lineJSON){
//   this.id = lineJSON.id;
//   this.color = lineJSON.color;
//   this.stations = lineJSON.stations;
//   return this
// }

//COLLECTION
var mta = {
  networkData: {},
  getLineData: function( lineName, callback){
    var that = this;
    var url = '/lines/' + lineName;
    // AJAX to networkData
    $.ajax({
      url: url,
      dataType: 'json',
      success: function(data){
        that.networkData[lineName] = data;
      //   createLine(data);
      //   displayStationList(data);
      //   console.log(data.stations);
        callback()
      }
    })
    return this;
  }
};

// VIEWS
function displayStationList(lineName, listCssSelector){
  // clears and displays exits
  // stations = data.stations
  // for(var index=0; index < stations.length; index ++){
  //   var li = $('<li>').html(data.station[index].address);
  //   $(listCssSelector).append(li)
  var lineStationList = $(listCssSelector);
  $(lineStationList).html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx, ele){
    var $newLi = $('<li>').html(ele.address);
    $(lineStationList).append($newLi);
  })
}



// ON LOAD
$(function(){
  $('.line').on('click', function(e){
    //obtaain line name
    // var lineName = $('.line').data('name') ;
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
    }, 5000)

  })
})
