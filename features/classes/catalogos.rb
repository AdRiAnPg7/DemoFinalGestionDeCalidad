class Catalog
    include Capybara::DSL

    def goToCatalogsPage
        xPath = "//a[contains(@class,'nav-link') and contains(text(), 'Catálogo')]"
        find(:xpath, xPath).click
    end

    def selectTypeCatalog(type)
        xPath = "(//i[@title='Añadir al Catálogo'])[1]"
        if type == "Añadir Catalogo Publico" 
            xPath = "(//i[@title='Añadir al Catálogo'])[2]"
        end
        find(:xpath, xPath ).click
    end

    def fillDataCatalog(table)
        text = Time.now.strftime("%d%m%Y%H%M")
        data = table.rows_hash
        data.each_pair do |key, value|
        case key
            when "Nombre:"
                fillNameCatalog(value)
            when "Descripcion:"
                fillDescriptionCatalog(value)
            end
        end
    end

    def fillNameCatalog(name)
        fill_in 'Ingrese nombre del catálogo', :with => name
    end

    def fillDescriptionCatalog(description)
        fill_in 'Ingrese descripción del catálogo', :with => description
    end

    def selectCompany (company)
        xPath = "(//option[@class='ng-star-inserted'  and contains(text(), '"+company+"')])[1]"
        find(:xpath, xPath).click
    end

    def clickAddButton
        xPath = "//button [2]"
        find(:xpath, xPath).click
    end

    def displayCatalog(catalog)
        xPath = "//span[text()='"+catalog+"']"
        find(:xpath, xPath).click
    end

    def selectDeleteCatalog(catalog)
        xPath = "//span[(text()='"+catalog+"')]/../../descendant::i[contains(@class, 'sidebar-catalog-trash-icon')]"
        find(:xpath, xPath).click
    end
    
    def confirmDelete
        xPath = "//button[text()=' Si ']"
        find(:xpath,xPath).click
    end

end