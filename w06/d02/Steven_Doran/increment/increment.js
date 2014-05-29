person = {
    age: 10
};

function increment(person, callback) {
    person.age += 1;
    callback(person);
}

function display(person) {
    console.log(person.age);
}

increment(person, display)