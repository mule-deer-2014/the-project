## README

<h1>API Documentation</h1>
<h2>How to get Users</h2>
<table>
  <tbody>
    <tr>
      <th>Resource</th>
      <th>Description</th>
    </tr>
    <tr>
      <th>GET /api/users/:id</th>
      <th>Returns select user.</th>
    </tr>
    <tr>
      <th>GET /api/users</th>
      <th>Returns all users.</th>
    </tr>
  </tbody>
</table>

<h2>How to get Songs</h2>
<table>
  <tbody>
    <tr>
      <th>Resource</th>
      <th>Description</th>
    </tr>
    <tr>
      <th>GET /api/songs/:id</th>
      <th>Returns select song.</th>
    </tr>
    <tr>
      <th>GET /api/songs</th>
      <th>Returns all songs.</th>
    </tr>
  </tbody>
</table>

<h2>How to get Genres</h2>
<table>
  <tbody>
    <tr>
      <th>Resource</th>
      <th>Description</th>
    </tr>
    <tr>
      <th>GET /api/genres/:id</th>
      <th>Returns select genre.</th>
    </tr>
    <tr>
      <th>GET /api/genres</th>
      <th>Returns all genres.</th>
    </tr>
  </tbody>
</table>


<h2>How to get Votes</h2>
<table>
  <tbody>
    <tr>
      <th>Resource</th>
      <th>Description</th>
    </tr>
    <tr>
      <th>GET /api/votes/:id</th>
      <th>Returns select vote.</th>
    </tr>
    <tr>
      <th>GET /api/votes</th>
      <th>Returns all votes.</th>
    </tr>
  </tbody>
</table>




###Components
::gesture for upvote/downvote
::unique device ID
::song table associated with genres

::need a votes table. store db on remote server.

::Store data and show via CLI (command-line interface)

###Requirements
* Build an API server that works to record the events as described
* Build a console based app that can be used to push events to the server
  (mimic an iOS app)
* Build a JavaScript based app that's pretty that consumes data from the
  endpoint.  It should be Ajaxy and cool.
* Build a Gem that encapsulates the algorithmic logic

The API server should be tested by controller and unit tests, the algorithm gem
should be tested by unit tests.  As a hint, you probably will want to use
`FactoryGirl` and `RSpec`.

