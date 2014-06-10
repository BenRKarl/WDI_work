function clock(){
  var d, h, m, s;
  d = new Date;

  h = 30 * ((d.getHours() % 12) + d.getMinutes() / 60);
  m = 6 * d.getMinutes();
  s = 6 * d.getSeconds();

  //move the hands
  setAttr('h-hand', h);
  setAttr('m-hand', m);
  setAttr('s-hand', s);
  setAttr('s-tail', s+180);

  h = d.getHours();
  m = d.getMinutes();
  s = d.getSeconds();

  setTimeout(clock, 1000);
};

function setAttr(id, val){
  var v = 'rotate(' + val + ', 280, 280)';
  document.getElementById(id).setAttribute('transform', v)
}

window.onload=clock;
