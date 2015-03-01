# Friendbook

Build a one-model CRUD app...

* Setup a welcome page
* Create a *friend* model with the following fields:

	* first_name (string)
	* last_name (string)
	* photo_url (string)
	* hobbies (string)
	* bio (text)

* Setup model resources for `/friends`

* At `friends#index`: print out a list of all friend names ordered by last name. Link each friend's name to their bio page. Also include an "add friend" link at the bottom of this page.

* At `friends#show`: print out all of the friend's data, and include links for "all friends", "edit this friend", and "delete this friend".

* Configure `/friends/new` and `/friends/create` to add friends. Use form helpers and strong parameters. Redirect to the newly-created friend page.

* Configure `/friends/edit` and `/friends/update` to modify friends. Use the same form as the "new" action, and strong parameters. Redirect to the newly-modified friend page.

* Configure `/friends/destroy` to delete friend records. Redirect to the friends index page.

## Bonus

You probably composed the following tedious ERB output many times among your views:

```
<%= @friend.first_name %> <%= @friend.last_name %>
```

Yuck. Try adding a `full_name` method onto your Friend model that builds the formatted name, and then output that value among your views:

```
<%= @friend.full_name %>
```