require('sinatra')
require('sinatra/reloader')
require('pg')
require('./lib/client')
require('./lib/stylist')

also_reload('lib/**/*.rb')

DB = PG.connect({:name => 'hair_salon'})
