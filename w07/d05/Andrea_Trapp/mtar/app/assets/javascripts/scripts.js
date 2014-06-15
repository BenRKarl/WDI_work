
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function( lineName, callback ){ 

    // What is this ????
    var that = this;

    // Code will go here to make ajax request and place the info into the mta's networkData
    $.ajax({
      // url: '/lines/?line_name='+lineName,
      url: '/lines/'+lineName,     
      dataType: 'json',
      success: function(data){
        // Place that lines stations in the mta.networkData       
          that.networkData[lineName] = data;
          // After that is complete... evaluate the callback
          callback();              
      }
    })

    // should anything go here to allow for method chaining?
    return this;
  }
};

function displayStationList(lineName, listCssSelector){
  // this is the callback function!
  // Code to clear and display a line's stations
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx, ele){
    var $newLi = $('<li>').html(ele.address);
    $lineStationList.append($newLi);
    console.log("i am here");
  })
}


$(function(){

  // Click on a div, that represents the line
  $('.line').on('click', function(e){
    // Obtain the line's name 
    // e is the event
    // e.target is the div-element
    var lineName = e.target.innerText;
    
    mta.getLineData(lineName, function(){
      displayStationList(lineName, '.stations-list')
    })
  })

  // make the div, that represents the line, colorful
  // color is stored in database
  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate({
      opacity: 1,
    }, 500)
  })

})