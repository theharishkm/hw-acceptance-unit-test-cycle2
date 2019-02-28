Feature: create new movies
  As a rottenpotatoes user
  So that I can contribute to the movies list  
  I want to be able to create new movies
  
Background: movies in database
  
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: create new movies
  When I am on the RottenPotatoes home page
  And I follow "Add new movie"
  And I fill in "Title" with "Blade Runner 2049"
  And I select "R" from "Rating"
  And I select "2017" from "movie_release_date_1i"
  And I select "October" from "movie_release_date_2i"
  And I select "3" from "movie_release_date_3i"
  And I fill in "Director" with "Denis Villeneuve"
  And I press "Save Changes"
  Then I should be on the new home page
  And I should see "Blade Runner 2049 was successfully created."
