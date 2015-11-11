#!/usr/bin/env ruby
require 'rubygems'
require 'selenium-webdriver'

# driver = Selenium::WebDriver.for :chrome
# driver.get "http://localhost:3000"
#
# element = driver.find_element :name => 'authenticity_token'
# use implicit wait ()to poll system for presence before clicking on it)
# element.click('authenticity_token')
# element.send_keys "name value"
# foo = ""
#
# goto my shopping cart display, verify item added is there:
# use bing.com
# text Mark: 720 301 9057
#
# bing.com
# point id the text box
# send keys to text box of a latlong you know
# click on returned frame and store to a variable
# compare variable == to "Westminster"
# use implicit wait to poll system for presence before clicking on it


# driver.get "http://google.com"
#
# element = driver.find_element :name => "q"
# element.send_keys "Cheese!"
# element.submit
#
# puts "Page title is #{driver.title}"
#
# wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# wait.until { driver.title.downcase.start_with? "cheese!" }
#
# puts "Page title is #{driver.title}"
# driver.quit

#You need to require the gem "selenium-driver"
# require "selenium-webdriver"
#
#... see webdriver ruby api docs here: http://selenium.googlecode.com/svn/trunk/docs/api/rb/_index.html
#... Most usefull classes are Driver and Element, check them out for a good start
# driver = Selenium::WebDriver.for :chrome
# driver.navigate.to "http://www.google.com"
# element = driver.find_element(:name, 'q')
# element.send_keys "Hello WebDriver!"
# element.submit
# puts driver.title
# driver.quit

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://www.bing.com"
# element = driver.find_element(:name, 'q')
element = driver.find_element(:id, 'sb_form_q')
element.send_keys "Westminster, CO lat long"
element.submit
puts driver.title
puts element.inspect
result = driver.find_element(:id, 'b_results')
puts result.inspect
puts result.text.chomp()
# puts result.attribute(b_focusTextMedium)
# driver.quit
