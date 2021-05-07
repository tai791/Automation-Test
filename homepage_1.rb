require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
# $expected_slide = 3
describe 'Home Page with three slides only' do
    it 'test slide' do
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        # sleep 2
        shopMenu = driver.find_element(:id, 'menu-item-40').click
        # sleep 2
        homeMenu = driver.find_element(:xpath, '//*[@id="content"]/nav/a').click
        # sleep 2
        # slide = driver.find_element(:xpath, '//*[@id="n2-ss-6"]/div[1]/div/div/div[1]').count
        # puts " #{slide}"
        driver.quit
    end
end
    
