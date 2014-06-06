
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function(lineName, callback){
    //code will make ajax req & place info into the mtas networkData
    $.ajax({
      url:'/lines/'+lineName,
      dataType: 'json',
      success: function(data){
        //put line's stations in mta.networkData
        //after that eval callback
        callback()
      }
    })
    //method chaining
    return this;
  }
};

function displayStationList(lineName, listCssSelector){
  // Code to clear and display a line's stations(exits)
}

$(function(){

  $('.line').on('click', function(e){
    var target = $(e.target);
    var lineName = target.html().trim();
    
    //obtain line name
    //var lineName = ?
  
    mta.getLineData(lineName, function(){
    displayStationList(lineName, '.stations-list')
    // })
  })

})