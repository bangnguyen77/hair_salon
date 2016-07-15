require('spec_helper')

describe(Client) do

  describe("#id") do
    it('returns the id of a Client') do
      client = Client.new({:id => 1, :name => "Mike", :stylist_id => 1})
      expect(client.id()).to(eq(1))
    end
  end

  describe('#name') do
    it('returns a Client name') do
      client = Client.new({:id => nil, :name => "Mike", :stylist_id => 1})
      expect(client.name()).to(eq("Mike"))
    end
  end

  describe('#stylist_id') do
    it 'lets you read the stylist id of a client' do
      client = Client.new({:id => nil, :name => "Franny", :stylist_id => 1})
      expect(client.stylist_id()).to(eq(1))
    end
  end

  describe('.all') do
    it('is an empty array at first') do
      expect(Client.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a client to the database') do
      client = Client.new({:id => nil, :name => "Mike", :stylist_id => 1})
      client.save()
      expect(Client.all()).to(eq([client]))
    end
  end

  describe(".find") do
    it("returns a client by its ID number") do
      client1 = Client.new({:id => nil, :name => "James"})
      client1.save()
      client2 = Client.new({:id => nil, :name => "Patric"})
      client2.save()
      expect(Client.find(client1.id())).to(eq(client1))
    end
  end

  describe('.find') do
    it 'returns a client by their ID' do
      client1 = Client.new({:id => nil, :name => "Franny", :stylist_id => 1})
      client1.save()
      client2 = Client.new({:id => nil, :name => "Polly", :stylist_id => 1})
      client2.save()
      expect(Client.find(client2.id())).to(eq(client2))
    end
  end



  # describe("#==") do
  #   it("is the same client if it has the same attributes") do
  #     client1 = Client.new({:id => nil, :name => "Franny", :stylist_id => 1})
  #     client2 = Client.new({:id => nil, :name => "Franny", :stylist_id => 1})
  #     expect(client1).to(eq(client2))
  #   end
  # end
  #


  # describe('#update') do
  #   it 'lets you update a client name and stylist id' do
  #     client = Client.new({:id => nil, :name => "Franny", :stylist_id => 1})
  #     client.save()
  #     client.update({:name => "Rachel", :stylist_id => 12})
  #     expect(client.name()).to(eq("Rachel"))
  #     expect(client.stylist_id()).to(eq(12))
  #   end
  # end
  #
  # describe('#delete') do
  #   it 'lets you delete a client from the database' do
  #     client1 = Client.new({:id => nil, :name => "Franny", :stylist_id => 1})
  #     client1.save()
  #     client2 = Client.new({:id => nil, :name => "Polly", :stylist_id => 1})
  #     client2.save()
  #     client1.delete()
  #     expect(Client.all()).to(eq([client2]))
  #   end
  # end
end
