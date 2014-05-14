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

* Create a new Artist (Vincent Van Gogh) and save him to your database
```ruby
vince = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
```

* Create a new Painting (Starry Night) and save it to your database
```ruby
starry_night = Painting.create(title: "Starry Night")
```
* Return all Artists
```ruby
Artist.all
```
* Return all Paintings
```ruby
Painting.all
```
* Return the artist with an id of 2
```ruby
Artist.find(2)
```
* Return the artist with a name of "Vincent Van Gogh"
```ruby
Artist.find_by(name: "Vincent Van Gogh")
```
* Return all the artists who are "Spanish"
```ruby
Artist.where(nationality: "Spanish")
```
* Return the painting with an id of 1
```ruby
Painting.find(1)
```

* Return the painting with a name of "Guernica"
```ruby
Painting.find_by(name: "Guernica")
```

* Return all the paintings that "Pablo Picasso" painted
```ruby
Artist.find_by(name: "Pablo Picasso").paintings
```
* Return the artist of "Guernica"
```ruby
Painting.find_by(title: Guernica).artist
```
* Change Vincent Van Gogh's nationality to "American"
```ruby
Artist.find_by(name: "Vincent Van Gogh").update(nationality: "American")
```
* Change "Starry Night" to be one of Pablo Picasso's paintings
```ruby
starry = Painting.find_by(title: "Starry Night")
artist = Artist.find_by(name: "Pablo Picasso")
artist.paintings << starry
```

