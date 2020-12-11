
Given(/^A test campaign named "([^"]*)" exists$/) do |arg1|
  xpath = "//div[@class='container']/div[@class='row campaigns-dae']"
  expect(find(:xpath, xpath)).to have_content(arg1)
end

When(/^I click on "([^"]*)"$/) do |linkTitle|
  xpath="//div[@class='row campaign-table-item table-rows']//span[text()='"+linkTitle+"']"
  find(:xpath, xpath).click
end

When(/^I click on the letter icon next to a Touch Point poll named "([^"]*)"$/) do |pollTitle|
  xpath="//div[@class='pl-1 pr-0 col-lg-10']/span[text()='"+pollTitle+"']/../..//i[@class='sidebar-actions icon fa fa-file-text cursor-pointer leaveHover-show-campaign']"
  find(:xpath, xpath).click
end


Then('I will be on the {string} details page') do |arg1|
  xpath ="//div[@class='sidebar-show-campaign-title  col-lg-12']"
  expect(find(:xpath, xpath)).to have_content(arg1.upcase)
end

Then(/^I will open a window with a preview of the {string} poll views$/) do |arg1|
  xpath= "//div[@class='modal-header']"
  expect(find(:xpath, xpath)).to have_content(arg1)
end



Given('I am on the campaign details page for {string}') do |campaignTitle|
  xpath="//div[@class='row campaign-table-item table-rows']//span[text()='"+campaignTitle+"']"
  find(:xpath, xpath).click
end

Then('I will open a window with a preview of the {string} poll views') do |arg1|
  xpath= "//div[@class='modal-header']"
  expect(find(:xpath, xpath)).to have_content(arg1)
end

Given('a test campaign named {string} exists') do |string|
  expect(page).to have_content(string)
end

When('I click on a Mystery Shopper poll named {string}') do |pollTitle|
  xpath="//div[@class='pl-1 pr-0 col-lg-10']/span[text()='"+ pollTitle +"']"
  find(:xpath, xpath).click
end

Then('I will see the Mystery Shopper {string} poll\'s details on the center of the page') do |pollTitle|
  xpath="//div[@id='surveySection']"
  sleep(5)
  expect(find(:xpath, xpath)).to have_content(pollTitle)
end