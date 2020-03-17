# "BeautyVerse" Rails Project

Welcome to the beautiful world of makeup, where you can browse different brands and their most popular products with the help of our applicatiion built with Ruby on Rails. You can also write a review for any particular product, or see other people's reviews, as well as see prices and descriptions of makeup products.

## Installation
1. Clone this repo, cd into that directory, and run **bundle install** to install all the necessary dependencies.
1. Run **rails s** to startup the Rails server.
1. Now that the server is running properly, you can navigate to http://localhost:3000/brands.

## Usage example
* Browse different makeup brands and their products
* See the descriptions and prices for the products you pick
* Leave a review for a particular product
* View other reviews if they're available for that product
* Delete or edit your review

```
/// edit.erb for Reviews (example code)

<% if flash[:errors] %>
  <% flash[:errors].each do |error| %>
    <p><%= error %></p>
    <% end %>
 <% end %>

<div class="ui form">
<%= form_for @review, :html => {:class => "ui form"}, url: brand_product_review_path(@product.brand, @product), method: "PUT" do |f| %>
    <div class="field">
    <%= f.label :content %>
    <%= f.text_area :content %>
    </div>

    <%= f.hidden_field :user_id, :value => @review.user_id %>
    <%= f.hidden_field :product_id, :value => @review.product_id %>
    <%= f.submit "Edit", class:"ui blue button" %>
  <% end %>
  </div> >
  ```
  ## Contributing
1. Fork it (https://github.com/yourname/yourproject/fork)
1. Create your feature branch (git checkout -b feature/fooBar)
1. Commit your changes (git commit -am 'Add some fooBar')
1. Push to the branch (git push origin feature/fooBar)
1. Create a new Pull Request
