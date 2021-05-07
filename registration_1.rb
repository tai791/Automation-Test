require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = 'Dashboard'
describe 'registration sign-in' do
    it 'registration sign-in' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-50').click
        driver.find_element(:id, 'reg_email').send_keys "tai7224yui@gmail.com"
        sleep 2
        driver.find_element(:id, 'reg_password').send_keys "tai0889454689"
        sleep 5
        driver.find_element(css: '[name="register"]').click
        sleep 2
        expect(driver.find_element(:link_text, 'Dashboard').text).to eql($expected);
        sleep 2
        driver.find_element(:xpath, '//*[@id="site-logo"]/a').click
    end
end