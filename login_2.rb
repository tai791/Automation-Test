require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = 'Error: A user could not be found with this email address.'
describe 'login-in with incorrect username and incorrect password' do
    it 'login-in with incorrect username and incorrect password' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'username').send_keys "tai123@gmail.com"
        driver.find_element(:id, 'password').send_keys "tai4689"
        driver.find_element(:name, 'login').click
        expect(driver.find_element(:xpath, '//*[@id="page-36"]/div/div[1]/ul/li').text).to eql($expected);
        puts "#{driver.find_element(:xpath, '//*[@id="page-36"]/div/div[1]/ul/li').text}"
        @driver.quit
    end
end