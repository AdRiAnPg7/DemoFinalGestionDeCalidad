After do 
  Capybara.current_session.driver.quit
end

Before '@login' do
  @user = User.new
  @user.login
end

Before '@goToCatalogs' do
  @catalog = Catalog.new
  @catalog.goToCatalogsPage
end

Before '@createCatalog' do 
  @catalogType = 'Añadir Catalogo Privado'
  @catalogName = 'Mi Catalogo Test'
  @catalogDescription = 'Este Es Mi Catalogo'
  @catalogCompany = 'UCB'

  @catalog.selectTypeCatalog(@catalogType)
  @catalog.fillNameCatalog(@catalogName)
  @catalog.fillDescriptionCatalog(@catalogDescription)
  @catalog.selectCompany(@catalogCompany)
  @catalog.clickAddButton
end


After '@deleteCatalog' do
  @catalogName = 'Mi Catalogo Test'
  @catalog.selectDeleteCatalog(@catalogName)
  @catalog.confirmDelete
  sleep 3
end

Before '@createPoll' do 
  xPath = "//span[text()='Mi Catalogo Test'][1]"
  find(:xpath, xPath).click
  xPath = "//span/descendant::i[@class= 'fa fa-plus-circle create-plus-icon']/.."
  find(:xpath, xPath).click

  xPathN = "//label[text()='Nombre:']/following-sibling::input"
  find(:xpath, xPathN).set("Mi Encuesta")

  xPathD = "//label[text()='Descripción:']/following-sibling::input"
  find(:xpath, xPathD).set("Esta Es Mi Encuesta")

  xPathT = "//option[@class='ng-star-inserted' and contains(text(),'Ninguno')]"
  find(:xpath, xPathT).click

  xPathC = "//div[@class='ng-input']/descendant::input"
  find(:xpath, xPathC).set("Mi Categoria")
  xPath = "//span [@class='ng-star-inserted' and contains(text(),'Mi Categoria')]"
  find(:xpath, xPath).click

  xPath = "//button[text()='Crear']"
  find(:xpath, xPath).click
  sleep 2

  xPath = "//span[@title='Mi Encuesta']"
  find(:xpath, xPath).click
  sleep 3
end

Before '@goToPoll' do
  xPath = "//span[text()='Mi Catalogo Test']"
  find(:xpath, xPath).click
  xPath = "//span [@title='Mi Encuesta']"
  find(:xpath, xPath).click
  sleep 3
end

Before '@createRegularView' do 
  xPath = "//button//i/.."
  find(:xpath, xPath).click

  xPathN = "//label[text()='Titulo:']/following-sibling::input"
  find(:xpath, xPathN).set("Mi Vista Regular")

  xPathT = "//option[@value='CONTENT']"
  find(:xpath, xPathT).click

  xPath = "//button[text()='Crear']"
  find(:xpath, xPath).click

  sleep 3
end

