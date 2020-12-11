When('I enter the required fields to create regular view as shown below') do |table|
    text = Time.now.strftime("%d%m%Y%H%M")
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Titulo:"
            xPathN = "//label[text()='Titulo:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        when "Tipo:"
            xPathT = "//option[@value='CONTENT']"
            find(:xpath, xPathT).click
        end
    end
  sleep 3
end