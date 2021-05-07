require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = 'Dashboard'
describe 'login-in with valid username and password' do
    it 'login-in with valid username and password' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'username').send_keys "tai3434@gmail.com"
        driver.find_element(:id, 'password').send_keys "tai0889454689"
        driver.find_element(:name, 'login').click
        expect(driver.find_element(:link_text, 'Dashboard').text).to eql($expected);
    end
end