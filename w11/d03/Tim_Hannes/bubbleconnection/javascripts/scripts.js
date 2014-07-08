Array.prototype.sample = function(){ //on prototype for array
  var idx = Math.floor(this.length * Math.random()); //create index, and grab a random index
  return this[idx] //return random index
};


function projectData(data){


  //select entire SVG
  var svg = d3.select('svg');

  //need new tents? if so, build them!
  var circles = svg.selectAll('circle') //in the svg, select all circles and tell me how many there are
                    .data(data) //this is the data to project onto svg
                    .enter() //the difference - how many tents(li) do i need? to reflect data accordingly
                    .append('circle'); //if you need to, append a circle with attributes...

// Update vizualization with new data
  var circles = svg.selectAll('circle') //go get the campsite, find out how many li's are existing
                      .data(data) //data to project onto campground
                      .transition()
                        .duration(500)
                        .attr('r', function(d){return d+'px'}) //radius of 10px
                        .attr('cx', function(){return(Math.random()*110)+'%'}) //center x point
                        .attr('cy', function(){return(Math.random()*110)+'%'}) //center y point
                        .style('opacity', function(){ return Math.random() })
                        .style('fill', function(){ return crayola.sample().hex }); //color steelblue

  // remove unneeded circles
  svg.selectAll('circle') //go get the campsite, find out how many li's are existing
      .data(data)
      .exit()
      .remove();
}


window.onload = function(){ //once the window is ready

  d3.select('svg') //grab the svg
    .attr('width', '100%') //set the width
    .attr('height', '75%') //set the height
    .style('border', '1px solid black'); //set border

    setInterval(function(){
      projectData([15,22,25,70,35,55,75,99,150,22,32])
    }, 300)
}
