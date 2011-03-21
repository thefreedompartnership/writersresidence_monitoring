Feature: Writer's Residence
	As a developer I want to make sure that
	my ridiculously complex Apache configuration
	doesn't break so my customers keep paying me.
	
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
		Then I should see "Blog posts by Monica Shaw"
	
	Scenario: Customer custom domain
		When I go to "http://indietim.com"
		Then I should see "Home of Tim Harding"

	Scenario: Customer custom domain blog
		When I go to "http://indietim.com/blog"
		Then I should see "Blog posts by Tim Harding"

	Scenario: Customer custom domain www
		When I go to "http://www.monicashaw.com"
		Then I should see "Home of Monica Shaw"

	Scenario: Customer custom domain blog www
		When I go to "http://www.monicashaw.com/blog"
		Then I should see "Blog posts by Monica Shaw"

	Scenario: Attachment redirects main site
		When I get "http://writersresidence.com/attachments/0000/1054/PACK_EXPO_postcard.pdf"
		Then I should be redirected to "http://writersresidence.com/system/attachments/files/1054/original/PACK_EXPO_postcard.pdf"
		When I get "http://monicashaw.writersresidence.com/attachments/0000/1054/PACK_EXPO_postcard.pdf"
		Then I should be redirected to "http://writersresidence.com/system/attachments/files/1054/original/PACK_EXPO_postcard.pdf"
		When I get "http://www.monicashaw.com/attachments/0000/1054/PACK_EXPO_postcard.pdf"
		Then I should be redirected to "http://writersresidence.com/system/attachments/files/1054/original/PACK_EXPO_postcard.pdf"
		When I get "http://indietim.com/attachments/0000/1054/PACK_EXPO_postcard.pdf"
		Then I should be redirected to "http://writersresidence.com/system/attachments/files/1054/original/PACK_EXPO_postcard.pdf"
