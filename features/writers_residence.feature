Feature: Writer's Residence
	As a developer I want to make sure that
	my ridiculously complex Apache configuration
	doesn't break so my customers keep paying me.

  # Kinda tempted to do something like this... terse but loses some meaning?
  # Scenario Outline: Visiting a page
  #   When I go to "<a_url>"
  #   Then I should see "<expected_content>"
  #   
  # Examples:
  # | a_url                        | expected_content                               |
  # | http://writersresidence.com  | Create a beautiful writing portfolio with ease |
  # | https://writersresidence.com | Create a beautiful writing portfolio with ease |

  Scenario: Main site URL
    When I go to "http://writersresidence.com"
    Then I should see "Create a beautiful writing portfolio with ease"
  
  Scenario: Main site URL SSL
    When I go to "https://writersresidence.com"
    Then I should see "Create a beautiful writing portfolio with ease"
  
  Scenario: Main site sign up URL SSL
    When I go to "https://writersresidence.com/signup"
    Then I should see "Sign-up for Writer's Residence"
  
  Scenario: Main site URL redirect
    When I go to "http://www.writersresidence.com"
    Then I should see "Create a beautiful writing portfolio with ease"
    
  Scenario: Main site blog
    When I go to "http://writersresidence.com/blog"
    Then I should see "WordPress"
    
  Scenario: Main site blog deep link
    When I go to "http://writersresidence.com/blog/2011/03/15/how-to-increase-traffic-to-your-website/"
    Then I should see "How to Increase Traffic to Your Website"
  
  Scenario: Main site blog SSL
    When I go to "https://writersresidence.com/blog"
    Then I should see "WordPress"
    
  Scenario: Main site blog redirect
    When I go to "http://www.writersresidence.com/blog"
    Then I should see "WordPress"
  
  Scenario: Customer site
    When I go to "http://monicashaw.writersresidence.com"
    Then I should see "Home of Monica Shaw"
  
  Scenario: Customer site blog
    When I go to "http://monicashaw.writersresidence.com/blog"
    Then I should see "Blog by Monica Shaw"
  
  Scenario: Customer custom domain
    When I go to "http://indietim.com"
    Then I should see "Home of Tim Harding"
  
  Scenario: Customer custom domain blog
    When I go to "http://indietim.com/blog"
    Then I should see "Blog by Tim Harding"
  
  Scenario: Customer custom domain www
    When I go to "http://www.monicashaw.com"
    Then I should see "Home of Monica Shaw"
  
  Scenario: Customer custom domain blog www
    When I go to "http://www.monicashaw.com/blog"
    Then I should see "Blog by Monica Shaw"

  # Less meaning here about what each URL represents?
  Scenario Outline: Attachment redirects main site
    When I get "<a_url>"
    Then I should be redirected to "http://writersresidence.com/system/attachments/files/1054/original/PACK_EXPO_postcard.pdf"
    
  Examples:
    | a_url                                                                               |
    | http://writersresidence.com/attachments/0000/1054/PACK_EXPO_postcard.pdf            |
    | http://monicashaw.writersresidence.com/attachments/0000/1054/PACK_EXPO_postcard.pdf |
    | http://www.monicashaw.com/attachments/0000/1054/PACK_EXPO_postcard.pdf              |
    | http://indietim.com/attachments/0000/1054/PACK_EXPO_postcard.pdf                    |
