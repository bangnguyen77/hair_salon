require('sinatra')
require('sinatra/reloader')
require('pg')
require('./lib/client')
require('./lib/stylist')

also_reload('lib/**/*.rb')

# DB = PG.connect({:name => 'hair_salon'})

# get('/') do
#   @page_title = "home"
#   erb(:index)
# end
#
# get("/admin")j do
#   @page_title = "admin"
#   @stylists = Stylist.all()
#   erb(:admin)
# end
