function projectData(data){

  //sample
  Array.prototype.sample = function(){
    var idx = Math.floor(this.length * Math.random());
    return this[idx];
  }
  // Select entire campsite
  var svg = d3.select('svg');

  // build circles
  var circles = svg.selectAll('circle')
                        .data(data)
                        .enter()
                        .append('circle');
                          
  var circles = svg.selectAll('circle')
                        .data(data)
                        .transition()
                          .duration(500)
                            .attr('r', function(d){return d + 'px'})
                            .attr('cx', function(){ return (Math.random() * 100) + '%' })
                            .attr('cy', function(){ return (Math.random() * 100) + '%' })
                            .style('opacity', function(){return (Math.random() * 1) })
                            .style('fill', function(){ return crayola.sample().hex });


  // Fill circle

  // var tents = campsite.selectAll('li')
  //                       .data(data)
  //                       .text(function(d){
  //                         return d + ' sleeps here'
  //                       });

    svg.selectAll('circle')
      .data(data)
        .exit()
        .remove();


}

window.onload = function(){
  d3.select('svg')
        .attr('width', '100%')
        .attr('height', '75%')
        .style('border', '1px solid black');
  setInterval(function(){
    projectData([50,100,150,10,20,44,66])
  }, 500)
  
}