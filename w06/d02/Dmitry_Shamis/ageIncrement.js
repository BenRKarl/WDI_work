var person = {
  age: 10
};

function birthday(person, callback) {
  person.age += 1;
  callback(person);
}

function show(person) {
  console.log(person.age);
}
