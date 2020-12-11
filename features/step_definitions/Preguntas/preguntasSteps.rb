When('I click button to add question') do
    xPath = "//button[@class='ml-2 mr-2 btn btn-outline-primary btn-sm button-create btn-width-size btn-size ng-star-inserted']"
    find(:xpath, xPath).click
end
  
When('I click button add question') do
    xPath = "//button [text()='Crear']"
    find(:xpath, xPath).click
end

Then('the confirmation question created {string} screen is displayed') do |string|
    xPath = "//div [@class='toast-message ng-star-inserted' and contains (text(),' Pregunta agregada correctamente! ')]"
    text= string
    sleep 3
    expect(xPath).to have_content(text)
end