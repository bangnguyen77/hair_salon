require('spec_helper')


describe(Client) do

  describe("#id") do
    it('will return the id of a Client') do
      new_client = Client.new({:name => "Mike", :id => 1})
      expect(new_client.id()).to(eq(1))
    end
  end

  describe('#name') do
    it('will return a Client name') do
    new_client = Client.new({:name => "Mike"})
    expect(new_client.name()).to(eq("Mike"))
    end
  end

  describe('#save') do
    it('will save a Client to the database') do
      new_client = Client.new({:name => "Mike"})
      new_client.save()
      expect(Client.all()).to(eq([new_client]))
    end
  end

  describe('.all') do
    it('will return a list of all Clients') do
      new_client = Client.new({:name => "Mike"})
      new_client.save()
      expect(Client.all()).to(eq([new_client]))
    end
  end

  describe(".find") do
    it('will return a client by ID') do
      new_client = Client.new({:name => "Mike"})
      new_client.save()
      expect(Client.find(new_client.id())).to(eq(new_client))
    end
  end


end
