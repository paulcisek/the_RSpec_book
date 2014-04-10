Given(/^a genre named comedy$/) do
  @comedy = Genre.create!(:name => "comedy")
end

When(/^i create move Caddyshack in the Comedy genre$/) do
  visit movies_path
  click_link "Add Movie"
  fill_in "Title", :with => "Caddyshack"
  select "1980", :from => "Release Year"
  check "Comedy"
  click_button "Save"
end

Then(/^Caddyshack should be in comedy genre$/) do
  visit genres_path
  click_link "Comedy"
  response.should contain("1 movie")
  response.should contain("Caddyshack")
end