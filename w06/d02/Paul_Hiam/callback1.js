person = {
  age: 10
}
function birthday(person, callback) {
  person.age += 1;
  callback(person);
}

function show(person) {
  console.log(person.age)
}
// call this ==>
birthday(person, show)
// get this ==> 11 (etc)