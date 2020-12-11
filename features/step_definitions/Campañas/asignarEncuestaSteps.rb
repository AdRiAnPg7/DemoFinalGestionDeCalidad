Given('I am on the {string} popup window') do |string|
    xpath="//span[@class='new-item dae-font-add-create-color sidebar-name sidebar-create']"
    find(:xpath,xpath).click
end

When(/^I enter the assignment details as show below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Nombre de Asignacion:"
            fill_in 'Ingrese nombre de asignación', :with => value
        when "Inicio:"
            fill_in 'Fecha de inicio', :with => value
        when "Conclusión:"
            fill_in 'Fecha de conclusión', :with => value
        end
    end
end

When('I select a public poll named {string}') do |pollName|
    xpath = "//div[@class='col ng-star-inserted']/div[@class='row ng-star-inserted']/span[text()='"+pollName+"']"
    find(:xpath, xpath).click
end


When("I click on the create assignment button") do
    click_button('Asignar')
end

Then('I will see a new poll named {string} on the list') do |pollName|
    xpath="//div[@class='col']/div[@class='survey-items']"
    expect(find(:xpath,xpath)).to have_content(pollName)
end

