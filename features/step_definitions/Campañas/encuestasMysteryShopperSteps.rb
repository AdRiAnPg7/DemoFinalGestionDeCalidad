Given('I have a poll assignment named {string}') do |pollName|
    xpath="//div[@class='sidebar-dae col-lg-2']"
    sleep(5)
    expect(find(:xpath,xpath)).to have_content(pollName)
end
  
 
  
When('I click the inspector icon') do
    xpath="//img[@class='inspect-icon']"
    find(:xpath,xpath).click
end
  
When('I click on the add inspector button') do
    xpath="//span[@class='add-option-name']"
    find(:xpath,xpath).click
end

When('I select the {string} from the inspector list') do |name|
    xpath="//div[@class='form-group'][1]/select"
    find(:xpath, xpath).click
    inspectorPath= "//option [text()='"+name+"']"
    #select(string, :from => 'Seleccione Inspector')
    find(:xpath, inspectorPath).click
end
  
When('I enter the required inspector fields as show below') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Cantidad:"
            fill_in 'Cantidad', :with => value
        when "Fechas para inspeccionar:"
            fill_in 'Rango de fechas', :with => value
        end
    end
end

  
When('I click the assign inspector button') do
    click_button('Agregar')
end
  
Then('an inspector named {string} exists in the inspector list') do |inspectorName|
    xpath="//div[@id='usersSection']"
    expect(find(:xpath,xpath)).to have_content(inspectorName)
end

When('I click on the delete inspector button for {string}') do |inspectorName|
    xpath="//span[text()='"+inspectorName+"']/../..//i"
    find(:xpath,xpath).click
end

Then('{string} is no longer on the inspector list') do |inspectorName|
    xpath="//div[@id='usersSection']"
    expect(find(:xpath,xpath)).not_to have_content(inspectorName)
end