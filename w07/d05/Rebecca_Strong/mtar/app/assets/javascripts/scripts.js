
console.log('Let Us Put Stuff Here')


var mta = {
  networkData: {},
  getLineData: function( lineName, callback){
    var that = this;
    url = '/lines/'+lineName;

//Code will go here to make ajax request and place the info into the mta's networkData
    $.ajax ({
      url: url,
      dataType: 'json',
      success: function(data) {

    that.networkData[lineName] = data;

//after that is complete... evaluate the callback
      callback();
    }
  })
//should anything go here to allow for method chaining?
      return this;


  }
};


function displayStationList(lineName, listCssSelector ){
// Code to clear and display a line's stations on the DOM (indicated by the inclusion of the listCssSelector)
//go find that listCss on the page
  var $lineStationList = $(listCssSelector);
//clear out whatever's in there
$lineStationList.html('');
//obtain the specific line's data. All of it through lineData. ALL of the stations. Make me an li html element and append to the list.
  var lineData = mta.networkData[lineName]; //networkData has line AND station info
$(lineData.stations).each(function(idx, ele){
  var $newLi = $('<li>').html(ele.address);
    $lineStationList.append($newLi);

})
}




//below is aka 'document-ready'
$(function(){
$('.line').on('click', function(event){

        //Obtain the clicked line's name
        var lineName =event.target.innerText;
        // var lineName = $(event.target).parent();
         //once you have name, go get the data and display on the screen

    mta.getLineData(lineName, function (){
    displayStationList(lineName, '.stations-list')
    })


  })

$('.line').each(function(idx, element){
  var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate;({
      opacity: 1,
    }, 500)
})
})
