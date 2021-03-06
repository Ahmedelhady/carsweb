# Add a declarative step here for populating the DB with cars.

Given /the following cars exist/ do |cars_table|
  cars_table.hashes.each do |car|
    # each returned element will be a hash whose key is the table header.
    #p car
    c = Car.create!(car)
  end
  #print ">>>>>>"+page.body
  #flunk "Unimplemented"
end

Given /the following models exist/ do |models_table|
  models_table.hashes.each do |model|
    # each returned element will be a hash whose key is the table header.
    m = CarModel.create!(model)
  end
  #flunk "Unimplemented"
end

When /^I set the "([^"]*)" to "([^"]*)"$/ do |field, value|
  fill_in field, :with=>value
end

When /I check the following : (.*)/ do |clist|
  clist.split(",").each do | opt |
    c =opt.strip
    check(c)
  end
end

When /^I reload the page$/ do
  visit [ current_path, page.driver.request.env['QUERY_STRING'] ].reject(&:blank?).join('?')
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #print ">>>>>>"+page.body
  assert page.body.index(e1) < page.body.index(e2)
  #flunk "Unimplemented"
end

Given /^I login as admin$/ do 
  steps %Q{ 
  Given I am on the cars page
  When I fill in "user_name" with "admin"
  When I fill in "user_password" with "admin"
  When I fill in "user_password" with "admin"
  When I press "Login"
  Then I should see "Signed in as Administrator"
  }
end