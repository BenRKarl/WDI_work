


function buildSvg() {
  var margin = {top: 100, right: 100, bottom: 100, left: 100},
      width = 400,
      height = 400;

  var maxGoalsFor = d3.max(window.teamResults, function(team) {
    return team.goals_for;
  });
  var minGoalsFor = d3.min(window.teamResults, function(team) {
    return team.goals_for;
  });

  var maxGoalsAgainst = d3.max(window.teamResults, function(team) {
    return team.goals_against;
  });

  var minGoalsAgainst = d3.min(window.teamResults, function(team) {
    return team.goals_against;
  });

  window.xAxisScale = d3.scale.linear().domain([maxGoalsAgainst, 0]).range([0, width]);
  window.yAxisScale = d3.scale.linear().domain([0,maxGoalsFor]).range([height, 0]);

  window.svg = d3.select('body')
      .append('svg')
        .attr('width', width+margin.right+margin.left)
        .attr('height', height+margin.top+margin.bottom)
      .append('g')
        .attr('height', height)
        .attr('width', width)
        .attr('class', 'graph')
        .attr('transform', 'translate('+margin.left+','+margin.top+')');

  var xAxis = d3.svg.axis()
                   .scale(xAxisScale)
                   .orient('bottom');
  var yAxis = d3.svg.axis()
                   .scale(yAxisScale)
                   .orient('left');

  svg.append('g')
    .attr('class', 'x axis')
    .attr('transform', 'translate(0, '+ height +')')
    .call(xAxis);

  svg.append('g')
    .attr('class', 'y axis')
    .call(yAxis);

}


function project(data) {
  var image = svg.selectAll('image').data(data);
  image.enter()
    .append('image')
    .attr('xlink:href', function(d) {
      console.log(d);
      var code = getCode(d.country).toLowerCase();
      var url = 'http://hewgill.com/flags/'+code+'.svg';
      return url;
    })
    .attr('width', 25)
    .attr('height', 25)
    .attr('x', 0)
    .attr('y', 0)
    .transition().duration(1000)
    .attr('x', function(d) {
      return xAxisScale(d.goals_against);
    })
    .attr('y', function(d) {
      return yAxisScale(d.goals_for);
    });
}

data = [];

function selectData() {
  var team = teamResults.pop();
  data.push(team);
  project(data);
  if (teamResults.length == 0) {
    window.clearInterval(timer);
  }
}

function getCode(name) {
  var country = country_codes.filter(function(d,i) {
    return d.name == name;
  });
  return country[0].code;
}


$(function() {
  console.log('here');
  $.ajax({
    url: '/teams',
    method: 'GET',
    dataType: 'json',
    success: function(data) {
      window.teamResults = data;
      buildSvg();

      window.timer = setInterval(selectData, 2000);
    }
  });
});




