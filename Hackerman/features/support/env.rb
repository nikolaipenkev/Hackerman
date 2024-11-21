  # frozen_string_literal: true

require 'rspec'
require 'tmpdir'
require_relative '../../helpers/allure_helper'

Before do
  driver.manage.window.maximize
end

After do |scenario|
  Dir.mktmpdir do |temp_folder|
    screenshot = driver.save_screenshot("#{temp_folder}/#{scenario.name}.png")
    AllureHelper.add_screenshot(scenario.name, screenshot)
  end
  driver.quit
end
