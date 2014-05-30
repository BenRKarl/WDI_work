var birthday = function(){
  var age = age;
  var new_age = age += 1;
  returns new_age;
};

// Aldric's Answer in Node
// $ node
// > person = {
// ... age: 10
// ... }
// { age: 10 }
// > function birthday(person, callback) {
// ... person.age += 1;
// ... callback(person);
// ... }
// undefined
// > function show(person) {
// ... console.log(
// .....
// > function show(person) {
// ....... console.log(person.age);
// ....... }
// undefined
// > birthday(person, show)
// 11
// undefined
// > birthday(person, show)
// 12
