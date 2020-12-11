class User
    include Capybara::DSL
    def login
        goToLoginPage()
        fillDataAccount()
        clickLoginButton() 
    end

    def goToLoginPage
        page.driver.browser.manage.window.maximize
        visit(ENV['URL'])
    end

    def fillDataAccount
        fill_in 'Usuario', :with => ENV['USER']
        fill_in 'Password', :with => ENV['PSW']
    end

    def clickLoginButton
        css = '.LoginButton'
        find(:css, css).click
    end

end