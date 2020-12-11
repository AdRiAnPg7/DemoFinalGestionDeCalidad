When('I click button to add poll') do
    @poll =  Poll.new
    @poll.clickAddPoll
end
  
When('I enter the required fields to create poll as show below') do |table|
    @poll.fillDataPoll(table)
    sleep 3
end


When('I click button add poll') do
    @poll.confirmAddPoll
    sleep 3
end

Then('the confirmation {string} screen is displayed') do |string|
    xPath = "//div [@class='toast-message ng-star-inserted' and contains (text(),' Encuesta creada con éxito ')]"
    text= string
    sleep 3
    expect(xPath).to have_content(text)
end

# Ver

# When('I click on poll {string}') do |name|
#     @poll.clickShowPoll(name)
# end
  
# Then('I will see poll name {string}') do |name|
#     text= name
#     xPath = "//span[text()='"+name+"']"
#     expect(xPath).to have_content(text)
#     sleep 3
# end

# Eliminar

# When('I click on the {string} poll button') do |name|
#     @poll.selectDeletePoll(name)
# end

# When('I confirm the delete poll action') do
#     @poll.confirmDeletePoll
# end

# Then('the poll {string} will no longer be on the list') do |name|
#     text= name
#     xPath = "//div[@class='ng-star-inserted']/descendant::span"
#     sleep 3
#     expect(xPath).to have_no_content(text)
# end

# Ver

When('I click on poll {string}') do |poll|
    xPath = "//span [@title='"+poll+"']"
    find(:xpath, xPath).click
    
end
  
Then('I will see poll name {string}') do |poll|
    text= poll
    xPath = "//span[text()='"+poll+"']"
    expect(xPath).to have_content(text)
    sleep 3
end

# Eliminar

When('I click on the {string} poll button') do |poll|
    xPath = "//span [text()=' "+poll+" ']"
    find(:xpath, xPath).click
end

When('I confirm the delete poll action') do
    xPath = "//button [text()=' Si ']"
    find(:xpath, xPath).click
end

Then('the poll {string} will no longer be on the list') do |poll|
    text= poll
    xPath = "//div[@class='ng-star-inserted']/descendant::span"
    sleep 3
    expect(xPath).to have_no_content(text)
end