Build an API Server
  write controller tests
    then write code to make it pass (i.e. create routes, models and code)
  then create routes and blocks/procs for those routes
  create

components:
  web server - 4 hours heroku and sinatra routes and controller
  database - 12 hours (looking up active record guide, figuring out proper associations and notation)
  (admin) command-line interface with ability to query the database for latest information
  music streaming API (i.e. soundcloud or youtube)
  data analysis algorithm to parse upvote/downvote information
  (user) front-end ios app to display profiles and interface to accept votes on playlist

Controller tests, test routes

Build an API server that works to record the events as described
  sinatra routes
  create/remove users

Build a console based app that can be used to push events to the server (mimic an iOS app)
Build a JavaScript based app that's pretty that consumes data from the endpoint. It should be Ajaxy and cool.
Build a Gem that encapsulates the algorithmic logic

Making a gem
http://guides.rubygems.org/make-your-own-gem/

make a lib directory
  include ruby file with the name of the gem
  make a gemspec file

  build a gem from gemspec
    i.e. gem build hola.gemspec

  push gem to rubygems
    gem push hola-0.0.0.gem
