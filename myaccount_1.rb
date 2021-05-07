require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = 'Dashboard'
describe 'myaccount - dashboard' do
    it 'myaccount - dashboard' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'reg_email').send_keys "tai72642llad@gmail.com"
        driver.find_element(:id, 'reg_password').send_keys "tai0889454689"
        driver.find_element(:name, 'register').click
        expect(driver.find_element(:link_text, 'Dashboard').text).to eql($expected);
        driver.find_element(:link_text, 'My Account').click
        puts "The site of Dashboard is #{driver.current_url}"
        driver.quit
    end
end