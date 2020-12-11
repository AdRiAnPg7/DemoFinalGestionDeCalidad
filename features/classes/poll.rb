class Poll
    include Capybara::DSL

    def clickAddPoll
        xPath = "//span/descendant::i[@class= 'fa fa-plus-circle create-plus-icon']/.."
        find(:xpath, xPath).click
    end

    def fillDataPoll(table)
        text = Time.now.strftime("%d%m%Y%H%M")
        data = table.rows_hash
        data.each_pair do |key, value|
            case key
            when "Nombre:"
                fillNamePoll(value)
            when "Descripción:"
                fillDescriptionPoll(value)
            when "Tipo:"
                selectTypePoll(value)
            when "Categoría:"
                selectCategoryPoll(value)
            end
        end
    end

    def fillNamePoll(name)
        xPathN = "//label[text()='Nombre:']/following-sibling::input"
        find(:xpath, xPathN).set(name)
    end

    def fillDescriptionPoll(description)
        xPathD = "//label[text()='Descripción:']/following-sibling::input"
        find(:xpath, xPathD).set(description)
    end

    def selectTypePoll(type)
        xPathT = "//option[@class='ng-star-inserted' and contains(text(),'"+type+"')]"
        find(:xpath, xPathT).click
    end

    def selectCategoryPoll(category)
        xPathC = "//div[@class='ng-input']/descendant::input"
        find(:xpath, xPathC).set(category)
        xPath = "//span [@class='ng-star-inserted' and contains(text(),'"+category+"')]"
        find(:xpath, xPath).click
    end

    def confirmAddPoll
        xPath = "//button[text()='Crear']"
        find(:xpath, xPath).click
    end

    def clickShowPoll(poll)
        xPath = "//span [@title='"+poll+"']"
        find(:xpath, xPath).click
    end

    def selectDeletePoll(poll)
        xPath = "//span [text()=' "+poll+" ']"
        find(:xpath, xPath).click
    end

    def confirmDeletePoll
        xPath = "//button [text()=' Si ']"
        find(:xpath, xPath).click
    end
end