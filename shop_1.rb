require 'selenium-webdriver'
require 'webdrivers'
require 'rspec'
$expected = "₹449"
describe 'shop-filter by price functionality' do
    it 'shop-filter by price functionality' do     
        driver = Selenium::WebDriver.for :chrome
        driver.get 'http://practice.automationtesting.in/'
        driver.manage.window.maximize
        driver.find_element(:id, 'menu-item-40').click
        sleep 2
        element = driver.find_element(:xpath, '//*[@id="woocommerce_price_filter-2"]/form/div/div[1]/span[2]')
        driver.action.drag_and_drop_by(element, -29, 296).perform
        sleep 2
        expect(driver.find_element(:xpath, '//*[@id="woocommerce_price_filter-2"]/form/div/div[2]/div[1]/span[2]').text).to eql($expected)
        driver.find_element(:xpath, '//*[@id="woocommerce_price_filter-2"]/form/div/div[2]/button').click
        sleep 2
        driver.quit
    end
end