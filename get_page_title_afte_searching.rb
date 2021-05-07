require 'selenium-webdriver'
require 'webdrivers'


driver = Selenium::WebDriver.for :chrome

# open google
driver.get 'https://www.google.com/'

#maximize browser window
driver.manage.window.maximize

#search with 'selenium' word
element = driver.find_element(css: '[name="q"]')
element.send_keys "selenium"
element.submit
sleep 5
#get page tile and print it
puts "Page tile is #{driver.title}"

#close browser
driver.quit