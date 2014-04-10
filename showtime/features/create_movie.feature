Feature: Create movie
  So that customer can browse music by genre
  As a site administrator
  I want to create movie in a specific genre

  Scenario: Create movie in genre
    Given a genre named comedy
    When i create move Caddyshack in the Comedy genre
    Then Caddyshack should be in comedy genre

