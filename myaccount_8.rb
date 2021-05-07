require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = "Dashboard"
$expected1 = 'http://practice.automationtesting.in/my-account/'
describe 'myaccount - orders' do
    it 'myaccount - orders' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'reg_email').send_keys "tai9981assd@gmail.com"
        driver.find_element(:id, 'reg_password').send_keys "tai0889454689"
        driver.find_element(:name, 'register').click
        # expect(driver.find_element(:link_text, 'Dashboard').text).to eql($expected);
        driver.find_element(:link_text, 'My Account').click
        driver.find_element(:link_text, 'Logout').click
        expect(driver.current_url).to eql($expected1);
        driver.quit
    end
end