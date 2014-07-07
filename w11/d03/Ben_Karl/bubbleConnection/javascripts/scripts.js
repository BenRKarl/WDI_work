//***** FROM ANDREWS EXAMPLES *****//

//Global Audio Variables
var audioContext;
var arraybuffer;
var fftObject;
var audioSource;
var samples = 1024;

//Global variable for SVG
var svg;

//Loading Audio
function loadFile(mp3file){
  var request = new XMLHttpRequest();
  request.open('GET', mp3file, true);
  request.responseType = 'arraybuffer';
  request.onload = function(){
    audioContext.decodeAudioData(request.response, function(buffer){
      audioBuffer = buffer;
      setAudioHandlers();
    });
  };
  request.send();
}

function setAudioHandlers(){
  var audioSource = audioContext.createBufferSource();
  audioSource.buffer = audioBuffer;
  fftObject = audioContext.createAnalyser();
  fftObject.fftSize = samples;
  audioSource.connect(fftObject);
  fftObject.connect(audioContext.destination);
  audioSource.noteOn(0); //this plays the audio (aka drop the needle)

  var data = new Uint8Array(samples);

  setInterval(function(){
    fftObject.getByteFrequencyData(data);
    d3Project(data);
  }, 10) // repeat rendering project
}

//D3 STUFF
var colorGradient = d3.scale.linear()
    .domain([0.5, 1])
    .range(['#ff0000', '#0000ff']);

Array.prototype.sample = function(){
  var idx = Math.floor(this.length * Math.random());
  return this[idx]
}

function d3Project(data){

  svg.selectAll('circle')
      .data(data)
      .enter()
        .append('circle');

  svg.selectAll('circle')
      .data(data)
        .attr('r', function(d){ return d/15 + 'px' })
        .attr('cx', function(x, y){ return (100-(data.length/(x + 1))) + '%' })
        .attr('cy', function(d){ return Math.abs(500-d*2) + 'px' })
        .attr('class', 'bubble')
        .style('fill', function(d){ return colorGradient(120/d) })
        .style('opacity', function(d){ return d/200 });

      return svg;
}



//   //Select Entire SVG
//   var svg = d3.select('svg');

//   //Build new circles....?
//   var circles = svg.selectAll('circle')
//                       .data(data)
//                       .enter()
//                       .append('circle');

// //update visualization with new data
//   var circles = svg.selectAll('circle')
//                       .data(data)
//                       .transition()
//                         .duration(500)
//                           .attr('r', function(d){ return d + 'px' })
//                           .attr('cx', function(){ return (Math.random()*100) + '%' })
//                           .attr('cy', function(){ return (Math.random()*100) + '%' })
//                           .attr('opacity', Math.random())
//                           .style('fill', function(){ return crayola.sample().hex });


  //Fill the circles!
  // var tents = svg.selectAll('li')
  //                     .data(data)
  //                     .text(function(d){
  //                       return d + ' sleeps here'
  //                     });

  //remove unneeded circles
  // svg.selectAll('circle').data(data).exit().remove();
// }


window.onload = function(){

  svg = d3.select('body')
          .append('svg')
            .attr('width', '900px')
            .attr('height', '500px')

  audioContext = new webkitAudioContext();
  loadFile('audio/strike_it_up.mp3');

}
