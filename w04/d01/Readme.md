#WEEK 04 DAY 01
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w04_d01_submission`

___

#Morning Exercise

###Migrations

1.  Write a migration to create a `dishes` table, with columns for:
	- type of `cuisine`
	- `prep_time` in minutes
	- `cost`
	- `celebrity_chef_id`

2.  Write a migration to create a `celebrity_chefs` table, with columns for:
	- `name`
	- `age`
	- `bleached_goatee`, a boolean

3.  Your product manager has decided your application is agnostic with respect to the creators of your dishes.  Write a migration to drop your `celebrity_chefs` table.
4.  Write a migration to drop the `celebrity_chef_id` from your `dishes` table.

5. Write a migration to add a column to your `dishes` table:
	- `gluten`, a boolean, which should default to `true`

6. Run your migrations.  Send the resultant terminal output to me in HipChat.


---
