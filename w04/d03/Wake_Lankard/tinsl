Tinsl
=====
Heroku link: http://Tinsl.herokuapp.com/
Github: https://github.com/wakelank/Tinsl


GA Project 1.  Fantasy Baseball, but with movies

Core requirements
- User will be able to create an acount and log in.
- User will be able to search a database of popular actors and pick some 
  to be the cast in a hypothetical movie.  
- The app will determine the gross profit of this hypothetical movie based 
  on the following: 
    For each movie the actor has been in the gross will be divided by the number of principle actors*.  The gross of the hypothetical movie is the total of each of these calculations.  Then it's adjusted for inflation.

    total = 0
    actor.movie.each {
      gross = movie.gross / movie.actor.count
      total = total + gross
    }

- The app will display a photo of each actor
- The user will be able to add and remove actors from their movie to get a new total.  

Future functionality
-Users will be able to add, save, and delete multiple hypothetical movies.  This will need to be an additional model.  
-User can add a name and a tagline to their movie.
-App will be able to generate humorous names and taglines.
-Users will be able to calculate a running gross of their movies based on the grosses of movies that have yet to come out or are currently playing, similar to being able to bet on the success of comming releases.  This will be challenging since film grosses don't seem to be avaialable in any API.  But maybe they can be scraped from webpages.


*OMBD limits number of actors per movie to four in the query I'm using.  Star Wars stars only Harrison Ford, Mark Hammil, Carrie Fisher, and Peter Cushing.  Hopefully I'll be able to get a longer list of actors, but I'm not sure how many to get.  It depends on the movie.  Maybe let the user decide.  I higher number would increase the movies their actor appears in, but would dilute the profits.

###########
#Resources#
###########

http://www.omdbapi.com/
https://www.kimonolabs.com/ (for scraping data from websites)
http://www.boxofficemojo.com/

############
#Milestones#
############
Friday morning:
-Seed the database with a small sample of a fixed list of movies and a dynamically generated list of actors.
-Present a welcome page with all the actors listed in a checkboxed list.

Monday morning:
-Allow the user to make a CRUD list of actors and see the gross of the hypothetical movie
-Allow user to make an account and log in
-other core requirements

Tuesday morning:
-some styiling
-full dataset loaded (top 500 movies, respective actors)
-actor search instead of checkboxes
-Core requirements incluing log in running on Heroku

Wednesday morning:
-Future requirements determined by how doable they are.  Probably the ability to save mulitple movies.

Thursday morning:
-complete styling

