require('sinatra')
require('sinatra/reloader')
require('pg')
require('./lib/client')
require('./lib/stylist')

also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "hair_salon"})

get("/") do
  @stylists = Stylist.all()
  erb(:index)
end

get("/stylists") do
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

get("/stylists/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  erb(:stylist)
end
