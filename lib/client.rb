class Client
  attr_reader(:id, :name)

  define_method(:initialize) do |attributes|
    @id = attributes[:id] || nil
    @name = attributes[:name]
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO clients (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch('id').to_i()
  end

  define_singleton_method(:all) do
    returned_clients = DB.exec('SELECT * FROM clients order by name asc;')
    results = []
    returned_clients.each() do | client |
      results.push(Client.new({:id => client.fetch('id').to_i, :name => client.fetch('name')}))
    end
    
    results
  end

  define_singleton_method(:find) do |id|
    client_single = DB.exec("SELECT * FROM clients WHERE id = #{id} limit 1;")
    found_client = nil
    client_single.each() do |client|
      found_client = Client.new({:id => client.fetch('id').to_i(), :name => client.fetch('name')})
    end
    found_client
  end


end
