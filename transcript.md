IOS App => Unknown, no experience makeing IOS Apps
  #hit sound cloud api to play a song
  #user can upvote or downvote the song
  #user's votes for a song are stored in
  a database on webserver via an api.

Web Server => 2 hour
  #Routes for getting votes from the app
  #Routes that return data to the client
  #Deploy server

Database => 1 hour
  #users table
    -name
    -gender
  #songs table
    -title
    -song_id
  #votes/join table

Command Line Ruby App => 2 hours
  #makes requests to web server for data
  #choose a song, see who likes and dislikes that song
  #choose a user, see what songs they like and dislike
