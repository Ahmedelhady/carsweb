


Then /^I should see a list of used cars$/ do 
@rows_in_db=Car.all.count
assert(page.all('table.table tr').count.should == @rows_in_db)
end

Then /^I should see "(.*)" before "(.*)"$/ do |s1,s2|

txt=page.html.to_s

assert(txt.index(s1)<txt.index(s2))
end

Then /^I should see only "(.*)" cars$/ do |brand|
cars_not_selected=Car.where(:name_not=>brand)

assert(steps "Then I should see \"#{brand}\"")
assert(steps "Then I should not see \"#{cars_not_selected}\"")

end
