

function buildSVG(data) {
   console.log('bulding svg...')
   var margin  = {
      top      : 100,
      right    : 100,
      bottom   : 100,
      left     : 150
      },
      width    = 1300 - margin.right - margin.left,
      height   = 750 - margin.top - margin.bottom,

      maxGoalsFor = d3.max(data, function(team) {
         return team.goals_for;
      }),
      minGoalsFor = d3.min(data, function(team) {
         return team.goals_for;
      }),
      maxGoalsAgainst = d3.max(data, function(team) {
         return team.goals_against;
      }),
      minGoalsAgainst = d3.min(data, function(team) {
         return team.goals_against;
      });

   window.xAxisScale = d3.scale.linear()
      .domain([maxGoalsAgainst+2, 0])
      .range([0, width]);

   window.yAxisScale = d3.scale.linear()
      .domain([maxGoalsFor+2, 0])
      .range([0, height]);

   window.svg = d3.select('body')
      .append('svg')
         .attr('width', width + margin.right + margin.left)
         .attr('height', height + margin.top + margin.bottom)
      .append('g')
         .attr('height', height)
         .attr('width', width)
         .attr('class', 'graph')
         .attr('transform', 'translate('+margin.left+','+margin.top+')');

   var xAxis = d3.svg.axis()
      .scale(window.xAxisScale)
      .orient('bottom');

   var yAxis = d3.svg.axis()
      .scale(window.yAxisScale)
      .orient('left');

   window.svg.append('g')
         .attr('class', 'x axis')
         .attr('transform', 'translate(0,'+height+')')
         .call(xAxis)
         .append('text')
      .text("Goals Against")
         .attr('x', width/2)
         .attr('y', 50);

   window.svg.append('text')      
      .text('World Cup 2014 Goals For And Against')
         .attr('x', width/2 - 270)
         .attr('y', -31)
         .style('font-size', '2em');


   window.svg.append('g')
         .attr('class', 'y axis')
         .call(yAxis)
         .append('text')
      .text("Goals For")
         .attr('y', height/2)
         .attr('x', -100);
};

function project(data) {
   var image = svg.selectAll('image').data(data);
   image.enter()
         .append('image')
         .attr('xlink:href', function(d) {
            var code = getCode(d.country);
            var url = 'http://hewgill.com/flags/'+code+'.svg';
            return url;
         })
         .attr('width', 25)
         .attr('height', 25)
         .attr('x', 0)
         .attr('y', 0)
         .attr('opacity', 0)
      .transition()
         .duration(1000)
         .attr('x', function(d) {
            return xAxisScale(d.goals_against) - 12;
         })
         .attr('y', function(d) {
            return yAxisScale(d.goals_for) - 12;
         })
         .attr('opacity', .75);
};

function getCode(name) {
   var countryArr = countryCodes.filter(function(d, i) {
      return d.name === name;
   });
   return countryArr[0].code.toLowerCase();
}

data = [];
function selectData() {
   var team = window.teamResults.pop();
   data.push(team);
   project(data);
   if(teamResults.length === 0){
      window.clearInterval(window.timer)
   };
};

$(function() {
   $('body').html('Loading...');
   $.ajax({
      url: '/teams',
      method: 'get', 
      dataType: 'json',
      success: function(data) {
         $('body').empty();
         window.teamResults = data;
         buildSVG(data);  
         window.timer = setInterval(selectData, 1000); 
      }
   })
})