## README

In an attempt to mirror the experiences you will have a mere 3 weeks from now,
we would like to give you a sample of what it will be like to work in the real
world.  Below is a transcript of a discussion with our client.  It is taken
from audio tape.  The client is moderately technical (or, *thinks* he is).

Please translate and deliver the client's request over the next several days.

## Transcript

Oh, hey is this thing on?

_"Yes."_

OK right.  Yeah.  OK so I was down in Palo Alto, y'know hobnobbing with some
VCs and what not and I heard these two dudes in line at the creamery and one of
them said something like "You know I could totally know whether I wanted to
date a girl if I knew what she thought of a few sound samples from my
soundcloud".  And I was like what if we tied dating to soundcloud?

OK so in our IOS app we play somebody 10 seconds of sound (royalty free, yo),
so if someone likes the music they swipe left, like a downvote.  If they swipe
right, it's an upvote.  Locally on the device we have their unique device ID,
whether it's an upvote or a downvote, and the genres associated with the song.

We need to store these votes on a per device basis on a remote server.  I hear
that all you devvies like Hackroku or something these days.  Can we do that?

_"Heroku."_

Bless you.  Anyway.  We want to be able to take these events and process them
according to a few algorithms: determine most frequently chosen for a user,
determine most frequently **NOT** chosen for a user, find all that cross a
threshold for a user, maybe even for the whole data set?  We don't have to
figure them all out just yet.  MVP, right?

_"Do you only want to store the data?"_

Well, for now probably.  Actually wait, you know, I'm a CS grad from 2001 so I
want to be able to view the results of my algorithms from a CLI.  You know, I
could start a CLI app that periodically polls the remotely-hosted DB.  I'll
probably just leave a terminal open with that thing on or something?

## Release 0

With your pair, break this down into a series of components.  A component is
**not** a technology.  It's a generic placeholder e.g. "web server" not "apache
web server."

## Release 1: Estimate

Estimate how long it will take to build these components.

_After big group session_

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
