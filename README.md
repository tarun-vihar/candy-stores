# Candy Store App

Things you may want to cover:
This is basic online store application build on Rails.

- High level: We can register shops. Each shop can have mulitple shelves.
  Further, each shelf can have mulitple candies.

- Functionality

1. Each candy should immediately enter the shop as an unshelved candy.
2. A shop should be able to remove or add a shelf.
3. It should be possible to move a candy from the list of unshelved candies to a shelf and vice versa.
4. A shop should be able to list all of the candies it stocks on its shelves.
5. When a new shelf is initialized, it should immediately be added to a shop

- Ruby version : Above 6 (Build on 6.1)

- System dependencies : Make sure node, sqlite3 and ruby are installed. Followed by rails

- Configuration :

- Database creation : These has 3 tables( shops, shelves, candies). For More Details Refer config/schema.rb file
  Note: Items table is unused. Will be removed upon further enhnacement

- Database initialization : Rails has In built Database

- How to run the test suite : NA

- Services (job queues, cache servers, search engines, etc.) : NA

- Deployment instructions

- ...
