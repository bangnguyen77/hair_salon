require('spec_helper')


describe(Client) do

  describe('#name') do
    it('will return a Client name') do
    new_client = Client.new({:name => "Mike"})
    expect(new_client.name()).to(eq("Mike"))
    end
  end


  
end
