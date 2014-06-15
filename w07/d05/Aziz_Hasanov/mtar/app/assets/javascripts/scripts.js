
console.log('Let Us Put Stuff Here')


var mta = {
  networkData: {}, // empty object to store ajax-requested data
  getLineData: function(lineName, callback) {
    var that = this; // what does "this" reffer to???

    // this code makes ajax request and places line's info into mta's networkData
    $.ajax({
      url: "lines/" + lineName,
      dataType: "json",
      success: function(data) {
        that.networkData[lineName] = data;
        // after "that" is complete... evaluate callback
        callback();
        console.log(data);
      }
    })
    return this;
  }
}

function displayStationList(lineName, listCssSelector) {
  // this code clears and appends a line's stations to the DOM
  var $lineStationList = $(listCssSelector);
  $lineStationList.html("");
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(index, elem) {
    var $newLi = $("<li>").html(elem.address);
    $lineStationList.append($newLi);
  })
}

$(function() {
  $(".line").on("click", function(event) {
    // this code obtains line's name
    var lineName = event.target.innerText;

    // another way
    // var lineName = $(e.target).parent();
    // var lineName = lineLi.data("name");

    mta.getLineData(lineName, function() {
      displayStationList(lineName, ".stations-list")
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

