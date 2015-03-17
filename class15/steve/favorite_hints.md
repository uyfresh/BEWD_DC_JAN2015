# Favorites... Hints

* Create a `Favorite` model with a `user_id` and an `image_url` field.

* Along with each image rendered into search results, include the following form:

```
<%= form_for Favorite.new(image_url: GIF_IMAGE_URL) do |f| %>
  <%= f.hidden_field :image_url %>
  <%= f.submit 'Add to favorites' %>
<% end %>
```

* When a favorite form is posted to the favorites controller, create a new favorite that references the `current_user` id.

* When displaying all favorites, find all favorites for the `current_user` id.