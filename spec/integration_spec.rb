require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the hair salon path", {:type => :feature}) do

  it("allows users to navigate to the stylist page and see the list of stylists") do
    stylist = Stylist.new({:id => nil, :name => "Courtney"})
    stylist.save()
    visit("/")
    click_link("List of Stylists")
    expect(page).to have_content(stylist.name())
  end

  it("allows users to add a new stylist") do
    visit("/stylists")
    fill_in("name", :with => "Jill")
    click_button("Add a Stylist")
    expect(page).to have_content("Jill")
  end
end
