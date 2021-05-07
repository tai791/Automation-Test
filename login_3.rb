require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = 'Error: Password is required.'
describe 'login-in with correct username and empty password' do
    it 'login-in with correct username and empty password' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'username').send_keys "tai2233@gmail.com"
        # driver.find_element(:id, 'password').send_keys ""
        driver.find_element(:name, 'login').click
        puts "#{driver.find_element(:xpath, '//*[@id="page-36"]/div/div[1]/ul/li').text}"
        expect(driver.find_element(:xpath, '//*[@id="page-36"]/div/div[1]/ul/li').text).to eql($expected);
    end
end