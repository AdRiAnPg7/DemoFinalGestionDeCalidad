Given('I click on a Touch Point poll named {string}') do |pollTitle|
    xpath="//div[@class='pl-1 pr-0 col-lg-10']/span[text()='"+ pollTitle +"']"
    find(:xpath, xpath).click
end

Then('a graph named {string} is displayed') do |string|
    expect(page).to have_xpath("//ngx-graph[@class='chart-container']")
end

When('I click the {string} tab') do |tabName|
    xpath="//ul[@class='nav nav-tabs']//span[text()='"+tabName+"']"
    find(:xpath,xpath).click
end

When('I click the create list button') do
    click_button('Agregar Lista')
end

When('I enter {string} in the name field') do |name|
    xpath="//div[@class='form-group'][1]/input"
    find(:xpath,xpath).set(name)
end

When('I select {string} from the company list') do |string|
    select(string, :from => 'companyId')
end

When('I select {string} from the regional list') do |string|
    select(string, :from => 'regionalId')
end

When('I enter the required user fields as show below') do |table|
    xpath="//div[@class='form-group'][3]/descendant::input"
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Nombre:"
            find(:xpath,xpath+"[1]").set(value)
        when "Teléfono:"
            find(:xpath,xpath+"[2]").set(value)
        when "Email:"
            find(:xpath,xpath+"[3]").set(value)
        when "CI:"
            find(:xpath,xpath+"[4]").set(value)
        end
    end
end