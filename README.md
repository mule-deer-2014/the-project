## README

In an attempt to mirror the experiences you will have a mere 3 weeks from now,
we would like to give you a sample of what it will be like to work in the real
world.  Below is a transcript of a discussion with our client.  It is taken
from audio tape.  The client is moderately technical (or, *thinks* he is).

Please translate and deliver the client's request over the next several days.

## Transcript

::gesture for upvote/downvote
::unique device ID
::song table associated with genres

::need a votes table. store db on remote server.

::Store data and show via CLI (command-line interface)


## Release 2: Revisions

Thanks to a meeting by your beloved tech lead and the client, we have revised
and clarified the requirements:

* Build an API server that works to record the events as described
* Build a console based app that can be used to push events to the server
  (mimic an iOS app)
* Build a JavaScript based app that's pretty that consumes data from the
  endpoint.  It should be Ajaxy and cool.
* Build a Gem that encapsulates the algorithmic logic

The API server should be tested by controller and unit tests, the algorithm gem
should be tested by unit tests.  As a hint, you probably will want to use
`FactoryGirl` and `RSpec`.

**DO NOT COPY THE SKELETON FROM PHASE 2**

You **may** use it as reference, but this is a chance to test what you _really_
know.  Don't cheat yourself this diagnostic.
