var hobbits = [
"Frodo Baggins",
"Samwise 'Sam' Gamgee",
"Meriadoc \"Merry\" Brandybuck",
"Peregrin 'Pippin' Took"
];

var buddies = [
"Gandalf the Grey",
"Legolas",
"Gimli",
"Strider",
"Boromir"
];

var baddies = [
"Sauron",
"Saruman",
"The Uruk-hai",
"Orcs"
];


var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
  $('body').append('middle-earth''article''h1')


    <section id="middle-earth">
      <article>
        <h1>The Shire</h1>
      </article>

      <article>
        <h1>Rivendell</h1>
      </article>

      <article>
        <h1>Mordor</h1>
      </article>

    </section>
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {

  <ul>
    <div class="hobbit">
      <li>Frodo Baggins,</li>
    </div class>
    <div class="hobbit">
      <li>Samwise 'Sam' Gamgee</li>
    </div class>
    <div class="hobbit">
      <li>Meriadoc "Merry" Brandybuck</li>
    </div class>
    <div class="hobbit">
      <li>Peregrin 'Pippin' Took</li>
    </div class>


  </ul>
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
