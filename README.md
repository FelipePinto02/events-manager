# Private Events

## About the Project

This is part of [The Odin Project](https://www.theodinproject.com/lessons/ruby-on-rails-private-events) Ruby on Rails Curriculum.

The idea is to practice the usage of models with many-to-many relationships.

## Live Demo

You can try it out [here](http://oli-events-manager.herokuapp.com/).

For full functionality, log in as 'Mr. Robot', 'Rick Sanchez', 'Walter White', 'Arthur Dent', 'BoJack' or 'Gandalf' and password '123456'.

**OBS**: For now, the website is hosted with Heroku, a cloud plataform to host web projects. It may take about 30 seconds to fire up a dyno so you can access the website.

## Functionality

This was a training app to practice many-to-many relationships. The app work with users, who can create or attend many events, and events, that are created by a user, while being attended by many users. Their features are:

* Users
  - Create their own events;
  - Invite guests to their created events;
  - Cancel invitations to their events;
  - Attend events that they were invited.
* Events
  - Edited by the event creator;
  - Canceled by the event creator;
  - Show info such as: event name, description, date, location and invited guests.

The app also features user validation, built with the [Devise](https://github.com/heartcombo/devise) Ruby gem.

## Getting started

To get started with the app, make sure you have Ruby and Rails installed on your machine. It was developed with:

* Ruby version: 3.1.2
* Rails version: 7.0.4

<details>
  <summary>Instructions</summary>

  Clone the repo to your local machine:
  ```ruby
  $ git clone https://github.com/FelipePinto02/events-manager.git
  ```
  Then, install the needed gems:
  ```ruby
  $ bundle install
  ```
  Next, migrate the database:
  ```ruby
  $ rails db:migrate
  ```
  Finally, on root path run a local server:
  ```ruby
  $ rails server
  ```
  Open browser to view application:
  ```ruby
  localhost:3000
  ```

  For some sample users, use seeds (their password are *123456*):
  ```ruby
  rails db:seed
  ```
</details>
