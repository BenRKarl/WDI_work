
console.log('Let Us Put Stuff Here');

var mta = {
  networkData: {},
  getLineData: function(lineName, callback){
    var that = this;
    //code will make ajax req & place info into the mtas networkData

    $.ajax({
      url:'/lines/'+lineName,
      dataType: 'json',
      success: function(data){
        //put line's stations in mta.networkData
        
        that.networkData[lineName] = data;
        //or = data.stations
        callback()
        //after that eval callback
      }
    });
    //method chaining
    return this;
  }
};

function displayStationList(lineName, listCssSelector){
  // Code to clear and display a line's stations(exits)
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx, ele){
    var $newLi = $('<li>').html(ele.address);
    $lineStationList.append($newLi);

  })
}


$(function(){
  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
  
    $(element).animate({
      opacity:1}, 5000);
  })


  $('.line').on('click', function(e){
    var target = $(e.target);
    var lineName = target.html().trim();  
    //obtain line name
  
  
    mta.getLineData(lineName, function(){
    
    displayStationList(lineName, '.stations-list')
     })
  })

})