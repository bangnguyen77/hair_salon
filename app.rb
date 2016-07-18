require('sinatra')
require('sinatra/reloader')
require('pg')
require('./lib/client')
require('./lib/stylist')

also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "hair_salon"})

get('/') do
  @page_title = "home"
  erb(:index)
end

get("/stylists") do
  @page_title = "stylists"
  @stylists = Stylist.all()
  erb(:stylists)
end

post("/stylists") do
  name = params.fetch("name")
  stylist = Stylist.new({:id => nil, :name => name})
  stylist.save()
  @stylists = Stylist.all()
  erb(:stylists)
end
