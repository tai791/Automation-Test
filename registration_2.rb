require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = 'Error: Please provide a valid email address.'
describe 'registration with invalid email-id' do
    it 'registration with invalid email-id' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'reg_email').send_keys "tai123@abc"
        sleep 5
        driver.find_element(:id, 'reg_password').send_keys "tai0889454689"
        sleep 5
        driver.find_element(css: '[name="register"]').click
       
        puts "#{driver.find_element(:xpath, '//*[@id="page-36"]/div/div[1]/ul/li').text}"
        expect(driver.find_element(:xpath, '//*[@id="page-36"]/div/div[1]/ul/li').text).to eql($expected);
        @driver.quit
    end
end