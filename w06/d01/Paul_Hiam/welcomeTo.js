// Triangle
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

function perim(triangle){
  perim = triangle.sideA + triangle.sideB + triangle.sideC;
  return perim;
}

//AC conditionals
function conditionAir(temp){
  var current = 68
  if (temp > current){
    var note = 'Turn off the A/C plz!';
  }else if (current > temp){
    var note = 'Turn on A/C plz';
  }else {
    var note = 'Juuust Riiiight';
  }
  return note;
}

//Favowite Things -- guitahw hewoes

var favThings = ['Django', 'Jimi Hendwix', 'Slash', 'Wobert Johnson', 'Wes Montgomewy']
favThings.forEach(function(name, index){
  console.log( name + ' is my number ' + [index + 1] + ' fav guitawist evaah!');
})

//Strings

var striggy = 'this is the my string var'

function reverse(s) {
  return s.split('').reverse().join('');
}

function novows(s) {
  return s.replace(/[aeiou]/g, '');
}

function great(s) {
  return s.replace(/the/g, 'the great');
}

function cap(s){
return s.toUpperCase();
}
//fix this to go through and cap after spaces. Check out loops **

//Javascript calculator
function plus(a, b){
  return a + b
}
function minus(a, b){
  return a - b
}
function times(a, b){
  return a * b
}
function div(a, b){
  return a / b
}

//idea gen
//<!-- Choose a random entry from the thisArray -->
function randomThis(){
  
  this = thisArray[Math.floor(Math.random() * thisArray.length)]
  return this
}
//<!-- Choose a random entry from the thatArray -->
function randomThat(){
  that = thatArray[Math.floor(Math.random() * thatArray.length)]
  return that
}

function whatDoesYourStartupDo(){
  var message = "So....your startup is basically like " + randomThis() + " for " + randomThat() + "?";
  console.log(message);
  return message
}
whatDoesYourStartupDo()
whatDoesYourStartupDo()
whatDoesYourStartupDo()


var thisArray = ["Skynet","Digital Music Distribution","FitBit","Realtime Data","ManPacks","Landing Page","Conversion Funnel","Social Network","Airbnb","SnapChat","Bang With Friends","HTML5 App","Google Analytics","Mapreduce Query","Node.js Server","KickStarter","Match.com","Adultfriendfinder","Pinterest","Amber Alert System","Groupon","Appstore","Digital Magazine","Distributed Social Network","Quadcopter","Daring Fireball","Content Distribution Network","Analytics Platform","OpenTable","LinkedIn","Brick and Mortar Solution","Aggregator","Social Game","jQuery Plugin","Game-based Incentive","Foursquare","YouTube","WeedMaps","Texts From Last Night","Ponzi Scheme","1-800-Flowers","Cash4Gold","Online Marketplace","Viral Marketer","Wearable Computer","Google Glass App","Facebook Marketplace","Zivity","Playboy","Cloud Storage Provider","Kindle Fire App","Pandora","Green Tech Program","Eco-Friendly Marketplace","Netflix","Amazon","Zappos","Reddit","Enron","Wordpress","iPhone App","Android App","Meme Generator","Crowdsourcing App","Mac App","SEO Optimizer","Apartment Guide","Social CRM","Database Abstraction Layer","Microblogging Service","Product Curation Service","API","New Social Platform","Tumblr","Deal Finder","CPA Ad Network","Collaborative Filter","Shopping Site","Digg 2.0","Recommendation Engine","News Recommender","Neural Network","Tesseract OCR engine","Unreadable CAPTCHA","Mobile Ecosystem","Flickr","Salesforce.com","Twitter Filter","Wikipedia","Yelp"];
var thatArray = ["Facebook Platform","Erlang Enthusiasts","Ex-Girlfriends","Mitt Romney's Hair","Laundromats","Celebrity Gossip","Endangered Species","Pandas","Middle Schoolers","Alpha Phi Girls","Funeral Homes","Chinese Take-out","Ex-Convicts","Fast Casual Restaurants","Marketers","Qualifying Leads","Funeral Homes","Farmers","Cougars","Pilots","Gynecologists","Cracked iPhone Apps","Stolen Goods","Adult Dancers","People Who Hate Groupon","Hunters","Sysadmins","Bath Salts","Nootropics","California","Government Corruption","Political Attack Ads","Whiskey Lovers","Parking Tickets","Highway Accidents","Traveling","Airlines","Presentation Tools","Your Boss","Ponzi Schemes","Your Finances","Restroom Attendants","Your Aquarium","Your Cat's Litter Box","Pets","Alcoholics","Camp Counselors","Nature Blogs","World of Warcraft","Models","Family Guy Enthusiasts","The Army","Cheap Vodka","Tech Incubators","Star Trek Conventions","Presentation Tools","Small Businesses","Beer","Nightclub Lines","Semi-Active Volcanoes", "Sanctimonial Artifacts","Traveling Abroad","Your Mom","Billionaires","Happy Hours","Ugg Boots","The Homeless","Blacking Out","Red Wine","Happy Families","Social Outcasts","Surgeons","Pounding Jagger Bombs","Textbooks","Coffee Shops","Baristas"];



