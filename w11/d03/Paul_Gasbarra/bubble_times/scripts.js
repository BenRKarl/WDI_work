Array.prototype.sample = function(){
  var idx = Math.floor(this.length * Math.random());
  return this[idx]
};




function projectData(data){

  //Select Entire Campsite
  var svg = d3.select('svg');

  //Need new circle? If so ... build them!
  var circles = svg.selectAll('cirlce')
    .data(data)
    .enter()
    .append('circle');


  // put circles on the board!
  var cirlces = svg.selectAll('circle')
      .data(data)
      .transition()
      .duration(10000)
      .attr('r', function(d){return d+'px'})
      .attr('cx', function(){return (Math.random()*100) + '%'})
      .attr('cy', function(){return (Math.random()*100) + '%'})
      .style('opacity', function(){return Math.random()})
      .style('fill', function(){return crayola.sample().hex });

  svg.selectAll('circle')
  .data(data)
  .exit()
  .remove();

}

function circle_array(num){
  circle_arr = [];
  for (i=0; i < num; i++){
    circle_arr.push( Math.random()*200)
  }
  return circle_arr;
}

window.onload = function(){

  d3.select('svg')
     .attr('width', '100%')
     .attr('height', '90%')
     .style('border', '1px solid black');

     setInterval(function(){
      projectData(circle_array(100))
     }, 15000)

}
