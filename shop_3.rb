require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = "http://practice.automationtesting.in/shop/?orderby=popularity"
describe 'shop-default sorting functionality' do
    it 'shop-default sorting functionality' do     
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-40').click
        driver.find_element(:xpath, '//*[@id="content"]/form/select/option[2]').click
        expect(driver.current_url).to eql($expected)
    end
end