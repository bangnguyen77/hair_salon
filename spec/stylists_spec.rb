require('spec_helper')

describe(Stylist) do

  describe(".all") do
    it("is an empty array at first") do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of a Stylist") do
      stylist = Stylist.new({:id => 1, :name => "Courtney"})
      expect(stylist.id()).to(eq(1))
    end
  end

  describe("#name") do
    it("returns a Stylist name") do
      stylist = Stylist.new({:id => nil, :name => "Courtney"})
      expect(stylist.name()).to(eq("Courtney"))
    end
  end

  describe("#save") do
    it("saves a stylist to the database") do
      stylist = Stylist.new({:id => nil, :name => "Courtney"})
      stylist.save()
      expect(Stylist.all()).to(eq([stylist]))
    end
  end

  describe("#==") do
    it("is the same stylist if it has the same attributes") do
      stylist1 = Stylist.new({:id => nil, :name => "Courtney"})
      stylist2 = Stylist.new({:id => nil, :name => "Courtney"})
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe(".find") do
    it("returns a stylist by its ID number") do
      stylist1 = Stylist.new({:id => nil, :name => "Courtney"})
      stylist1.save()
      stylist2 = Stylist.new({:id => nil, :name => "Jill"})
      stylist2.save()
      expect(Stylist.find(stylist1.id())).to(eq(stylist1))
    end
  end

  describe("#update") do
    it("lets you update a stylist name") do
      stylist = Stylist.new({:id => nil, :name => "Courtney"})
      stylist.save()
      stylist.update({:name => "Jill"})
      expect(stylist.name()).to(eq("Jill"))
    end
  end

  describe('#delete') do
    it("lets you delete a client from the database") do
      stylist1 = Stylist.new({:id => nil, :name => "Courtney"})
      stylist1.save()
      stylist2 = Stylist.new({:id => nil, :name => "Jill"})
      stylist1.delete()
      stylist2.save()
      expect(Stylist.all()).to(eq([stylist2]))
    end
  end

  describe("#clients") do
    it("returns all the clients assigned to a stylist") do
      stylist = Stylist.new({:id => nil, :name => "Courtney"})
      stylist.save()
      client1 = Client.new({:id => nil, :name => "Mike", :stylist_id => stylist.id()})
      client1.save()
      client2 = Client.new({:id => nil, :name => "Patrick", :stylist_id => stylist.id()})
      client2.save()
      expect(stylist.clients()).to(eq([client1, client2]))
    end
  end
end
