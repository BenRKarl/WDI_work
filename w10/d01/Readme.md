WEEK 10 DAY 01
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w10_d01_submission`
---

# Morning Exercise
## Rails Email Bot

* Create a Rails Application that allows a user to input a url and see a list of email addresses found on the site associated with that url.
* Sites and the emails discovered on them should be appropriately associated and saved in a postgres database.

***SPEC LEFT INTENTIONALLY VAGUE.***

---

## Juice Shack

Today in class we built an ingredient model and an ingredient collection.

Build out functionality for a:

- JuiceModel
	- An ingredients collection assigned to its 'ingredients' attribute.
- JuiceCollection
- JuiceView
	- renders own template with a ul
	- creates new IngredientListView and passe the JuiceView's ul as the el of the IngredientListView.
	- calls render on the new ingredient list view.
- JuiceListView
	- renders all juice views

You do not need to build a UI for the creation of these objects.  Create some of them in a window onload callback to verify that they are working.
