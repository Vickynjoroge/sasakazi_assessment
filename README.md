# Active Record CRUD Operations 

## Goals

- Perform CRUD operations on a SQL database table using Active Record

## Introduction

The goal of this is to get comfortable performing CRUD (Create, Read,
Update, Delete) actions using Active Record.


## Setup

First, run `bundle install` to install the dependencies from the Gemfile.

Next, run `bundle exec rake -T`, which will list all of the rake tasks you have
available. These tasks come with the `sinatra-activerecord` gem.


## Instructions

```console
$ bundle exec rake db:migrate
```
This will create a migration to the database(development.sqlite3).

You can  run the command below to generate some sample data:

```console
$ bundle exec rake db:seed
```

This will run the code in the `db/seeds.rb` file in order to create some movies.

Then, if you want to try out your code in the console, run:

```console
$ bundle exec rake console
```

Use the console to explore various Active Record methods that you'll need in
order to pass the tests.

### Create

- `Movie.create(title: title, release_date: release_date, director: director, lead: lead, in_theaters: in_theaters)``
 instantiates a movie with the given attributes and saves it to the database.

### Read

- `Movie.first_movie`: returns the first item in the table
- `Movie.last_movie`: returns the last item in the table
- `Movie.movie_count`: returns the number of records in the table
- `Movie.find_movie_with_id`: returns a movie from the table based on its id
  with the `.find` method
- `Movie.find_movie_with_attributes`: returns a movie from the table based on
  its attributes with the `.find_by` method
- `Movie.find_movies_after_2002`: uses a `.where` clause to select the
  appropriate movies released after 2002

### Update

- `Movie#update_with_attributes`: updates a single movie using the `#update`
  method
- `Movie.update_all_titles`: updates the title of all records at once using the
  `.update` method

### Delete

- `Movie.delete_by_id`: deletes a single item with the `#destroy` method
- `Movie.delete_all_movies`: deletes all items at once with the `.destroy_all`
  method
