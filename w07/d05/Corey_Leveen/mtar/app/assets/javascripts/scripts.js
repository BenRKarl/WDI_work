
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function( lineName, callback) {
    // Code will go here to make ajax request and place the info into the mta's networkData
    $.ajax({
      url: '/lines/'+lineName,
      dataType: 'json',
      success: function(data) {


        callback()
      }
    })

    // method chaining?

  }
};

function displayStationList (lineName, listCssSelector) {
  // Code to clear and display a line's stations
}

$(function(){
  $('.line').on('click', function(e){

    var target = e.target;
    var lineName = target.innerHTML.trim();

    mta.getLineData(lineName, function(){
      displayStationList(lineName, '.stations-list')
    })
  })
})
