Given('I have logged in to the Digitall Experiences website') do
  @user = User.new
  @user.login
end

Given('I am on the catalogs page') do
  @catalog = Catalog.new
  @catalog.goToCatalogsPage
end
  
#Crear
When('I click on the {string} button') do |type|
  @typeCatalog = type
  @catalog.selectTypeCatalog(@typeCatalog)
end
  
When('I enter the required fields as show below') do |table|
  @catalog.fillDataCatalog(table)
end
  
When('I select {string} on {string}') do |company, string2|
  @catalog.selectCompany(company)
end

 When('I click button add catalog') do
  sleep 3 
  @catalog.clickAddButton
end

Then('the confirmation screen is displayed') do
  xPath = "//div [@class='toast-message ng-star-inserted' and contains (text(),' Catálogo creado con éxito ')]"
  text= " Catálogo creado con éxito "
  sleep 3
  expect(xPath).to have_content(text)
end

#Ver Catalogo
When('I click on the catalog {string}') do |catalogo|
  @catalog.displayCatalog(catalogo)
end
  
Then('I will see catalog name {string}') do |catalogo|
  text= catalogo
  xPath = "//span[text()='"+catalogo+"']"
  expect(xPath).to have_content(text)
end

#Eliminar
When('I click on the Eliminar button from {string}') do |catalogo|
  @catalog.selectDeleteCatalog(catalogo)
end
  
When('I confirm the delete action') do
  @catalog.confirmDelete
end
  
Then('the catalog {string} will no longer be on the list') do |catalogo|
  text= catalogo
  xPath = "//span[@class='sidebar-name text-overflow text-overflow-sidebar dae-font-main-color']"
  sleep 3
  expect(xPath).to have_no_content(text)

end
  