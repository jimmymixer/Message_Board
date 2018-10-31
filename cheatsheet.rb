rails new MessageBoard

rails generate model Message title:string description:text

cd MessageBoard

rails db:migrate

rails generate controller Messages

// in routes add
resources :messages
root 'messages#index'

// in messages controller add
def index  ...etc

// set up views in app/views/messages
start new file index.html.erb

// Gems rubygems.org
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'

application.scss
@import "bootstrap-sprockets";
@import "bootstrap";

application.js
//= require bootstrap-sprockets

// Gems rubygems.org
gem 'simple_form', '~> 3.5'

rails generate simple_form:install --bootstrap

new file _form.html.erb
<%= simple_form_for @user do |f| %>
  <%= f.input :username %>
  <%= f.input :password %>
  <%= f.button :submit %>
<% end %>              >

** remember new action in controller needs new index page or redirect_to **

// Add USERS
// Gems rubygems.org
gem 'devise', '~> 4.3'
rails generate devise:install
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
rails g devise:views
rails generate devise User
rails db:migrate

// Add user_id to Message model
rails generate migration add_user_id_to_messages user_id:integer

rails db:migrate

// Create Comment model singular
rails generate model Comment content:text message:references user:references

rails db:migrate

// Create Comment controller plural
rails g controller Comments

// Add resources :comments to resources :messages *do














#
