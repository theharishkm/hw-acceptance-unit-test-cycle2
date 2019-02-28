Feature: sort list of movies by name or release date
  As a movie fan
  So that I can find movies by initial character or release date
  I want to sort movies by name or release date
  
Background: movies in database
  
  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

Scenario: sort the list of movies by name in increasing order 
  Given I am on the home page
  When I follow "Movie Title"
  Then I should be on the new home page
  And I should see "Aladdin" before "The Incredibles"

Scenario: sort the list of movies by release date in increasing order 
  Given I am on the home page
  When I follow "Release Date"
  Then I should be on the new home page
  Then I should see "When Harry Met Sally" before "The Help"

 