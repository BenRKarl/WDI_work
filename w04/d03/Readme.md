#WEEK 04 DAY 02
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w04_d02_submission`

___

#Morning Exercise

## MOMA Rails.
###***Key Skills:*** ActiveRecord Query Interface.

This app will have 2 models: Artists and Paintings. An Artist has many paintings, and a Painting belongs to an Artist.

An Artist has

* name
* nationality

A Painting has

* title
* artist_id

###Part 1 - Database Schemas

1. Create a new Aails app `morning_moma`.
2. Set up your schema so that it follows the above criteria.

###Part 2 - Seed your database.

Populate your database (using ActiveRecord) with at least 3 Artists and 3 Paintings (associated correctly!), including Vincent Van Gogh and Pablo Picasso (along with their master works Starry Night and Guernica)

###Part 3 - ActiveRecord Practice

In pry, write active record commands to do the following.  Save each command in a file `active_record_commands.txt`.

1. Create a new Artist (Vincent Van Gogh) and save him to your database
vince = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
2. Create a new Painting (Starry Night) and save it to your database
starry_night = Painting.create(title: "Starry Night")
3. Return all Artists
Artist.all
4. Return all Paintings
Painting.all
5. Return the artist with an id of 2
Artist.find(2)
6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by(name: "Vincent Van Gogh")
7. Return all the artists who are "Spanish"
Artist.where(nationality: "Spanish")
8. Return the painting with an id of 1
9. Return the painting with a name of "Guernica"

10. Return all the paintings that "Pablo Picasso" painted
11. Return the artist of "Guernica"

12. Change Vincent Van Gogh's nationality to "American"
13. Change "Starry Night" to be one of Pablo Picasso's paintings

