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

patch("/stylists/:id") do
  name = params.fetch("name")
  @stylist = Stylist.find(params.fetch("id").to_i())
  @stylist.update({:name => name})
  @stylists = Stylist.all()
  erb(:stylist)
end

delete("/stylists/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  @stylist.delete()
  @stylists = Stylist.all()
  erb(:stylists)
end

# post("/stylists/:id/") do
#
#   name = params.fetch("name")
#   stylist_id = params.fetch("stylist_id")
#   client = Client.new({:id => nil, :name => name, :stylist_id => stylist_id})
#   client.save()
#   @stylist = Stylist.find(params.fetch("id").to_i())
#   @clients = Client.all()
#   @stylist = Stylist.all()
#   erb(:stylist)
# end

post('/stylists/:id') do
  name = params.fetch('name')
  stylist_id = params.fetch('stylist_id')
  client = Client.new({:id => nil, :name => name, :stylist_id => stylist_id})
  client.save()
  @stylist = Stylist.find(params.fetch("id"))
  @clients = Client.all()
  @stylists = Stylist.all()
  erb(:stylist)
end

get("/clients") do
  @clients = Client.all()
  erb(:clients)
end

# post("/clients") do
#   name = params.fetch("name")
#   # stylist_id = params.fetch("stylist_id")
#   @client = Client.new({:name => name})
#   # client.save()
#   @clients = Client.all()
  # @stylists = Stylist.all()
#   erb(:clients)
# end

post('/clients') do
  name = params.fetch('name')
  stylist_id = params.fetch('stylist_id')
  client = Client.new({:id => nil, :name => name, :stylist_id => stylist_id})
  client.save()
  @clients = Client.all()
  @stylists = Stylist.all()
  erb(:clients)
end
