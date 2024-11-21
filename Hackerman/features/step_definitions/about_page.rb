# features/step_definitions/about_steps.rb
Given('I am on the Home page') do
  visit('/index.html')
end

When('I click on the {string} link in the navigation bar') do |link_text|
  within('[data-testid="navbar"]') do
    click_link(link_text)
  end
end

Then('I should be on the About page') do
  expect(page).to have_current_path('/about.html')
end

Then('I should see the heading {string}') do |heading_text|
  expect(page).to have_selector('h1', text: heading_text, exact_text: true)
end

Then('I should see the description {string}') do |description_text|
  expect(page).to have_selector('p', text: description_text, exact_text: true)
end

Given('I am on the About page') do
  visit('/about.html')
end

Then('I should see the footer text {string}') do |footer_text|
  within('[data-testid="footer"]') do
    expect(page).to have_content(footer_text)
  end
end
