// Global Audio Vars
var audioContext;
var arraybuffer;
var fftObject;
var audioSource;
var samples = 1024;

var svg;


// Audio Handling

function loadFile(mp3file) {
  var request = new XMLHttpRequest();
  request.open("GET", mp3file, true);
  request.responseType = "arraybuffer";

  request.onload = function() {
    audioContext.decodeAudioData(request.response, function(buffer) {
      audioBuffer = buffer;
      setAudioHandlers();
    });
  };
  request.send();
}


function setAudioHandlers() {
  var audioSource = audioContext.createBufferSource();
  audioSource.buffer = audioBuffer;
  fftObject = audioContext.createAnalyser();
  fftObject.fftSize = samples;
  audioSource.connect(fftObject);
  fftObject.connect(audioContext.destination);
  audioSource.noteOn(0); // Drop the needle (play audio)

  var data = new Uint8Array(samples);
  setInterval(function(){
    fftObject.getByteFrequencyData(data);
    d3Project(data);
  }, 10) // repeat rendering project
}



// D3
var colorGradient = d3.scale.linear()
    .domain([0.4, 1])
    .range(['#ff1d8e', '#ff69b4']);
            // hot pink to lighter pink

function d3Project(data){
  svg.selectAll('circle')
      .data(data)
      .enter()
        .append('circle');
    console.log(data);
  svg.selectAll('circle')
    .data(data)
    // .transition()
    //   .duration(3)
        .attr('r', function(d){ return d/40 +'px'})
        .attr('cx', function(y, x){ return (data.length/(x+1))+'%'})
        .attr('cy', function(d){ return Math.abs(500-d*2) +'px'})
        // Math.abs(500-d*2) +'px'
        .attr('class','bubble')
        .style('fill',function(d){ return colorGradient(120/d) })
        .style('opacity', function(d){ return d/200 });
    return svg;
}


window.onload = function(){
  svg = d3.select('body')
          .append('svg')
            .attr('width', '100%')
            .attr('height', '90%');

  audioContext = new webkitAudioContext();
  loadFile('audio/i-rave-you.mp3');
}

