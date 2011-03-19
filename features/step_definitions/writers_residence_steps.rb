When /^I go to "(.*)"$/ do |url|
  a = Mechanize.new
  @result = a.get(url)
end

Then /^I should see "(.*)"$/ do |phrase|
  @result.body.should =~ /#{phrase}/
end

When /^I get "(.*)"$/ do |url|
  @result = Net::HTTP.get_response(URI.parse(url))
end

Then /^I should be redirected to "(.*)"$/ do |target|
  @result.code.should == '301'
  @result['location'].should == target
end


