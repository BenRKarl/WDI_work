// ************************************
// *********** Global Stuff ***********
// ************************************

// -- global Audio Vars --
var audioContext;
var arraybuffer;
var fftObject;
var audioSource;
var samples = 1024;

// -- global var for svg --
var svg;




// ************************************
// ********* Audio Handling ***********
// ************************************

function loadFile(mp3file) {
    var reqest = new XMLHttpRequest();
    reqest.open("GET", mp3file,true);
    reqest.responseType = "arraybuffer";
    reqest.onload = function() {
      audioContext.decodeAudioData(reqest.response, function(buffer) {
        audioBuffer = buffer;
        setAudioHandlers();
      });
    };
    reqest.send();
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
      d3Project(data)
    }, 10) // repeat rendering project
}




function d3Project(data){

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

// window.onload = function(){
//   d3.select('svg')
//         .attr('width', '100%')
//         .attr('height', '75%')
//         .style('border', '1px solid black');
//   setInterval(function(){
//     projectData([50,100,150,10,20,44,66])
//   }, 500)
  
// }

// ************************************
// **** Let's get it started... Ha ****
// ************************************

window.onload = function(){

  svg = d3.select('body')
          .append('svg')
            .attr('width', '900px')
            .attr('height', '500px');

  audioContext = new webkitAudioContext();
  loadFile('audio/gd710218ii_08_St_Stephen.mp3');
}