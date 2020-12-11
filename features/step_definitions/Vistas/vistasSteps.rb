When('I click button to add view') do
    xPath = "//button//i/.."
    find(:xpath, xPath).click
    sleep 3
end
  
When('I enter the required fields to create initial view as shown below') do |table|
    text = Time.now.strftime("%d%m%Y%H%M")
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Titulo:"
            xPathN = "//label[text()='Titulo:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        when "Tipo:"
            xPathT = "//option[@value='START']"
            find(:xpath, xPathT).click
        when "Mensaje:"
            xPathN = "//label[text()='Mensaje:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        end
    end
  sleep 3
end

When('I click button add view') do
    xPath = "//button[text()='Crear']"
    find(:xpath, xPath).click
end

Then('the confirmation view created {string} screen is displayed') do |string|
    xPath = "//div [@class='toast-message ng-star-inserted' and contains (text(),' Vista creada con éxito ')]"
    text= string
    sleep 3
    expect(xPath).to have_content(text)
end

# Ver

When('I click on arrow next to a view named {string}') do |view|
    xPath = "//div [@class='col-12 even' or @class='col-12 odd' and contains(text(),'"+view+"')]/descendant::i[2]"
    find(:xpath, xPath).click
  end
  
Then('I will see a view with name {string}') do |view|
    text= view
    xPath = "//div [@class='col-10 survey-table-name' and contains(text(),'Mi Vista Inicial')]"
    expect(xPath).to have_content(text)
   
end

Then('I will see a view with message {string}') do |view|
    text= view
    xPath = "//h2[text()='Saludos']"
    expect(xPath).to have_content(text)
    sleep 3
end