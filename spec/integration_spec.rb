require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

DB = PG.connect({:dbname => "hair_salon_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM clients *;")
    DB.exec("DELETE FROM stylists *;")
  end
end

describe("the hair salon path", {:type => feature}) do
  it("visits the homepage and users click a link to get to the stylists page") do
    visit('/')
    click_link('Stylists')
    expect(page).to have_content("Stylists")
  end

  it("visits the homepage and users click a link to get to the clients page") do
    visit('/')
    click_link('Clients')
    expect(page).to have_content("Clients")
  end
end
