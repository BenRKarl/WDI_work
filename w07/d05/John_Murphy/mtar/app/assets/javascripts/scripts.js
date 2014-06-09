
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function(lineName, callback){
    var that = this
    // Code will go here to make ajax request and place info into MTA's networkData
    $.ajax({
      url: '/lines/' + lineName,
      dataType: 'json',
      success: function(data){
        lichard = data
        that.networkData[data.info.name] = data
        callback()
      }
    })
    return this
  }
}

function displayStationList(lineName, listCssSelector){
  // Code to clear and display a line's stations
  $(listCssSelector).html('')
  var stations = mta.networkData[lineName].stations
  $.each(stations, function(index, value){
    var newStation = $('<li>').html(value.address)
    $(listCssSelector).append(newStation)
  })


}


$(function(){
  $('.line').on('click', function(e){
    //Obtain the line's name
    // var lineName = ??
    var lineName = e.target.innerText
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
