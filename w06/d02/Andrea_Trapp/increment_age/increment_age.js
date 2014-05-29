var newPerson = {
  age: 30
};

function display(person) {
  console.log(person.age);
}

function increment(person, callback) {
  person.age += 1;
  callback(person);
}

increment(newPerson, display)
