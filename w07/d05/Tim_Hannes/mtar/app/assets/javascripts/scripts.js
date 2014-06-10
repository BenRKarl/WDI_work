
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {}, //store station strings key value pair in here
  getLineData: function(lineName, callback){

    var that = this;
    var url = '/lines/'+ lineName;

    $.ajax({
      url: url,
      dataType: 'json',
      success: function(data){
        that.networkData[lineName] = data; //after that is all complete, eval callback
        callback();
      }
    })
    return this; //allow for method chaining
  }
};

function displayStationList(lineName, listCssSelector){
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];//get all data associated with linename
  $(lineData.stations).each(function(idx, ele){ //inside lineData, get all stations
    var $newLi = $('<li>').html(ele.address);//takes elements html address and makes it the li
    $lineStationList.append($newLi); //append each to list
  })
}

$(function(){

  $('.line').on('click', function(e){ //on click event

    var lineName = e.target.innerText; //go get event target's inner text

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
    }, 1500)
  })

})
