Array.prototype.sample = function() {
  var idx = Math.floor(this.length * Math.random());
  return this[idx];
}

// var shapes = ["circle", "square", "triangle"];
// var randomShape = shapes[Math.floor(Math.random()*shapes.length)];

function projectData(data) {

  // selects entire SVG
  var svg = d3.select("svg");

  // creates new circles
  var circles = svg.selectAll("circle")
    .data(data)
    .enter()
    .append("circle");

  // updates visualization with new data
  var circles = svg.selectAll("circle")
    .data(data)
    .transition()
    .duration(1000)
      .attr("r", function(d) {return d + "px";})
      .attr("cx", function() {return Math.random()*100 + "%"})
      .attr("cy", function() {return Math.random()*100 + "%"})
      .style("fill", function() {return crayola.sample().hex});


  // remove unneeded circles
  svg.selectAll("circle").data(data).exit().remove();
}

window.onload = function() {
  d3.select("svg").attr("width", "100%").attr("height", "100%");

  setInterval(function() {
    // var randomSize = Math.floor(Math.random()*100);
    projectData([5, 10, 15, 25, 50, 100]);
  }, 1000);
}