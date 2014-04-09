Feature: Showtime Descriptions

  So that i can find movies that fit my schedule
  As a movie goer
  I want to see accurate and concise showtime

  @wip
  Scenario: Show minutes for time not ending with 00
    Given a movie
    When I set the showtime to "2007-10-10" at "2:15pm"
    Then The showtime description should be "October 10, 2007 (2:15pm)"

  Scenario: Hide minutes for times ending with 00
    Given a movie
    When I set the showtime to "2007-10-10" at "2:00pm"
    Then The showtime description should be "October 10, 2007 (2pm)"