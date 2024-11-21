# features/support/env.rb
require 'capybara/cucumber'
require 'selenium-webdriver'

# Configure Capybara to use Selenium with Chrome browser
Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://natpoho.github.io/Hackathon_Github/' # Adjust to your local server

# Optional: Increase default wait time
Capybara.default_max_wait_time = 5
