function play(string){
  console.log(string.split("").reverse().join(""));
}

play("hello i am a string")

function sub(string){
  console.log(string.replace("a", " ").replace("e", " ").replace("i", " ").replace("o", " ").replace("u", " "));
}
sub("hello i am a string")

function subthegreat(string){
  console.log(string.replace("the", "the great"));
}

subthegreat("I am the and powerful Oz")

function caps(string){
  console.log(string.toUpperCase());
}

caps("is this uppercase enough?")
