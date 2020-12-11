Given('I am on the Digitall Experience website') do
    @user = User.new
    @user.goToLoginPage
end

Given('I enter my user and password login') do
    @user.fillDataAccount
end

When('I press the login button') do 
    @user.clickLoginButton
end

Then('I am on home page') do
   expect(page).to have_content("Eventos")
end
