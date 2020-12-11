Given(/^I am on the campaigns page$/) do
    page.driver.browser.manage.window.maximize
    visit('/campaigns')
end
xpath=""
# Given(/^I have logged in to the Digitall Experiences website$/) do
#     page.driver.browser.manage.window.maximize
#     visit('/login')
#     fill_in 'Usuario', :with => ENV['USER']
#     fill_in 'Password', :with => ENV['PSW']
#     xpath = '/html/body/app-root/div/div/app-login/div/div/div[2]/form/div/form/div/div[4]/div/button'
#     find(:xpath, xpath).click
# end

When(/^I click on the create campaign button$/) do
    xpath = '/html/body/app-root/div/div/app-campaigns/div/div/div/div/button'
    find(:xpath, xpath).click
   end


Then(/^I will open the create campaign form$/) do
    expect(page).to have_content("Crear Campaña")
end

When(/^I click on the arrow next to a campaign named "([^"]*)"$/) do |arg1|
    xpath = "//span[text()='"+arg1+"']/../.."
    find(:xpath, xpath+"//i" ).click
 end

Then('I will have the options to Edit, View, and Delete') do
    xpath+="/.."
    print(xpath)
    expect(find(:xpath, xpath)).to have_content("Editar")  
end

When(/^I enter the required campaign fields as show below$/) do |table|
    text = Time.now.strftime("%d%m%Y%H%M")
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Nombre de Campaña:"
            fill_in 'Ingrese nombre', :with => value+text
        when "Inicio de campaña:"
            fill_in 'Fecha de inicio', :with => value
        when "Fin de campaña:"
            fill_in 'Fecha de conclusión', :with => value
        end
    end
end

When('I select the {string} from the companies list') do |string|
    select(string, :from => 'companyId')
end

When('I select attach the file {string}') do |string|
    #attach_file 'file', '/A.png'
    xpath = "//i[@class='fa fa-plus-circle add-option-icon']/span[@class='add-option-name']/../../input"
    imgPath="C:\\Users\\Adrian\\Desktop\\II_2020\\Gestion de Calidad\\Practica4_Automatitation\\Final\\DigitAll-Experiences-Tests\\A.png"
    
    attach_file('file', imgPath, visible: false)
end

When('I select the color white for colors') do
    xpath ="//Label [text()='Color:']/../input"
    value="#000000"
    page.find(:xpath, xpath).set("#FFFFFF")
end

When('I click the create button') do
    xpath ="//button[@class='btn btn-outline-primary btn-sm button-create']"
    page.find(:xpath, xpath).click
    sleep(3)
end

