function analyzeData(data){
  console.log(data)
  var planetsArr = data.response.results;
  for (var i = 0; i < planetsArr.length; ++i){
    var mass = planetsArr[i].mass;
    var distance = planetsArr[i].mean_distance;
    var name = planetsArr[i].name;
    var discovery_year = planetsArr[i].disc_year;
    var elem = $('<li>').html(name + ': ' + mass + " " + distance + " " + discovery_year);
    debugger;
    $('.planets-list').append(elem);
  } 
}

//window.xAxisScale = d3.scale.linear().domain([maxGoalsAgainst+2 ,0] ).range([0, width]);

function d3Project(data){
  var maxDistance = d3.max(data, function(planet){
    return planet.mean_distance;
  });
  var maxMass = d3.max(data, function(planet){
    return planet.mass;
  });
  var relxPos = d3.scale.linear().domain([0, maxDistance/50] ).range([0, 100]);
  var relMass = d3.scale.linear().domain([1, maxMass]).range([1,20])

  var svg = d3.select('svg');

  var circles = svg.selectAll('circle')
                        .data(data)
                        .enter()
                        .append('circle');
                          
  var circles = svg.selectAll('circle')
                        .data(data)
                        .attr('r',  function(d){ return relMass(d.mass) + 'px'})
                        .attr('cy', function(){ return (Math.random() * 100) + '%' })
                        .attr('cx', function(d){return relxPos(d.mean_distance) + '%'})
                        .css('background-color', '#689E92');
}

$(function(){
  console.log('this works');
  $('.body').html('loading...')
  $.ajax({
    url: '/planets',
    method:'get',
    dataType:'json',
    success: function(data){
        d3.select('svg')
        .attr('width', '100%')
        .attr('height', '75%')
        .style('border', '1px solid black');
  setInterval(function(){
    d3Project(data.response.results)
  }, 500)
    }
  })
})