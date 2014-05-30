function introduce(){
  console.log('Hi! Im ' + this.name + (this.mood > 5 ? ' happy':' sad'))
  // console.log(this)
}

var person = [
  {name: "Josh", age: 25, mood: 4},
  {name: "Matt", age: 24, mood: 2},
  {name: "Tom", age: 26, mood: 3},
  {name: "Ray", age: 24, mood: 7},
  {name: "Chris", age: 25, mood: 6},
  {name: "D-Bo", age: 35, mood: 6}
]

function iter(item){
  introduce.call(item);
}

person.forEach(iter)
