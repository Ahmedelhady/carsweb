Then /^I should see a list of used cars$/ do 
@rows_in_db=Car.all.count
assert(page.all('table.table tr').count.should == @rows_in_db+1)
end



Then /^I should see only "(.*)" cars$/ do |brand|
cars_not_selected=Car.where(:name_not=>brand)

assert(steps "Then I should see \"#{brand}\"")
assert(steps "Then I should not see \"#{cars_not_selected}\"")

end


