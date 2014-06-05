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

function toDashed(str) {
	return str.replace(/\s+/g, '-').replace(/\"|\'/g, '').toLowerCase();
}

function makeMiddleEarth(lands) {
	// create a section tag with an id of middle-earth
	var middleEarth = $("<section id='middle-earth'>");
	// add each land as an article tag
	// inside each article tag include an h1 with the name of the land
	for (var i=0; i<lands.length; i++) {
		var id = toDashed(lands[i]);
		var land = $("<article id='" + id + "'>");
		land.append($("<h1>"+lands[i]+"</h1>"));
		land.appendTo(middleEarth);
	}
	$("body").append(middleEarth);
}

makeMiddleEarth(lands)

function makeHobbits(hobbits) {
	// display an unordered list of hobbits in the shire
	var list = $("<ul>");
	// give each hobbit a class of hobbit
	for (var i=0; i<hobbits.length; i++) {
		var id = toDashed(hobbits[i]);
		var hobbit = $("<li id='" + id + "'>"+hobbits[i]+"</li>");
		hobbit.addClass("hobbit");
		hobbit.appendTo(list);
	}
	list.appendTo("#the-shire");
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
	// create a div with an id of 'the-ring'
	var ring = $("<div id='the-ring'>");
	// add the ring as a child of Frodo
	$("#frodo-baggins").append(ring);
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
	// display an unordered list of baddies in Mordor
	var list = $("<ul>");
	for (var i=0; i<baddies.length; i++) {
		var id = toDashed(baddies[i]);
		var baddie = $("<li id='" + id + "'>"+baddies[i]+"</li>");
		baddie.addClass("baddie");
		baddie.appendTo(list);
	}
	list.appendTo("#mordor");

}

makeBaddies(baddies);

function makeBuddies(buddies) {
	// create an aside tag 
	var aside = $("<aside>");
	// display an unordered list of buddies in the aside 
		var list = $("<ul>");
	for (var i=0; i<baddies.length; i++) {
		var id = toDashed(baddies[i]);
		var baddie = $("<li id='" + id + "'>"+baddies[i]+"</li>");
		baddie.addClass("baddie");
		baddie.appendTo(list);
	}
	list.appendTo("#mordor");
	// Make the Gandalf text node have a grey background
}
