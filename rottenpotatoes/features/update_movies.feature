Feature: update movies
  As a rottenpotatoes user
  So that I can add new or correct wrong information of some movies 
  I want to be able to update movies
  
Background: movies in database
  
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: create new movies
  When I am on the RottenPotatoes home page
  And I follow "More about Alien"
  And I follow "Edit"
  And I fill in "Director" with "Ridley Scott"
  And I press "Update Movie Info"
  Then I should be on the details page for "Alien"
  And I should see "Alien was successfully updated."