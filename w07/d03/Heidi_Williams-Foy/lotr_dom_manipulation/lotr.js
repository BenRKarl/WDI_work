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
	var list = $("<ul id='hobbits'>");
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
	var list = $("<ul id='buddies'>");
	for (var i=0; i<buddies.length; i++) {
		var id = toDashed(buddies[i]);
		var buddy = $("<li id='" + id + "'>"+buddies[i]+"</li>");
		buddy.addClass("buddy");
		buddy.appendTo(list);
	}
	list.appendTo(aside);
	aside.appendTo("body");
	// Make the Gandalf text node have a grey background
	$("#gandalf-the-grey").css("backgroundColor","grey");
}

makeBuddies(buddies);

function leaveTheShire() {
	// assemble the hobbits and move them to Rivendell
	var hobbits = $("#hobbits");
	hobbits.remove();
	$(hobbits).appendTo("#rivendell");
}

leaveTheShire();

function beautifulStranger() {
	// change the buddy 'Strider' textnode to "Aragorn"
	$("#strider").replaceWith(
		$("<li class='buddy' id='aragorn'>Aragorn</li>")
	);
}

beautifulStranger();

function forgeTheFellowShip() {
	// move the hobbits and the buddies to Rivendell
	var hobbits = $("#hobbits");
	var buddies = $("#buddies");
	hobbits.remove(); buddies.remove();
	hobbits.appendTo("#rivendell");
	buddies.appendTo("#rivendell");
	// create a new div called 'the-fellowship'
	var fellowship = $("<div id='the-fellowship'>");
	// add each hobbit and buddy one at a time to 'the-fellowship'
	// after each character is added make an alert that they have joined your party
	function addToParty() {
		$(this).remove();
		fellowship.append($(this));
		$(this).children().each(function() {
			alert($(this).text() + " has joined your party!");
		});
	}
	hobbits.each(addToParty);
	buddies.each(addToParty);
	$("#rivendell").append(fellowship);
}

forgeTheFellowShip();

