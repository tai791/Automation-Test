require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = "Android Quick Start Guide"
describe 'shop-product categories functionality' do
    it 'shop-product categories functionality' do     
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-40').click
        driver.find_element(:xpath, '//*[@id="content"]/ul/li[1]/a[2]').click
        expect(driver.find_element(:xpath, '//*[@id="product-169"]/div[2]/h1').text).to eql($expected)
        puts "Title #{driver.find_element(:xpath, '//*[@id="product-169"]/div[2]/h1').text}"
    end
end