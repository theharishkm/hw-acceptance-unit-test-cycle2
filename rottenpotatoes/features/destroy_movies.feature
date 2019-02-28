Feature: destroy movies
  As a rottenpotatoes user
  So that I can contribute to the movies list
  I want to be able to destroy movies
  
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
  And I press "Delete"
  Then I should be on the new home page
  And I should see "Movie 'Alien' deleted."
