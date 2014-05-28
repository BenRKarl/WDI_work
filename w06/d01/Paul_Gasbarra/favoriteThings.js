
var favoriteThings = ['ramen','chicken wings', 'video games', 'javascript', 'breaking bad'];

number = 1;
for (var thing in favoriteThings){
  console.log("My #" + number + " favorite thing is " + favoriteThings[thing] + ".");
  number += 1;
}
