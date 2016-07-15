# require('spec_helper')
#
# describe(Stylist) do
#   describe("#id") do
#     it('will return the id of a Stylist') do
#       new_stylist = Stylist.new({:name => "Mike", :id => 1})
#       expect(new_stylist.id()).to(eq(1))
#     end
#   end
#
#   describe('#name') do
#     it('will return a Client name') do
#     new_client = Client.new({:name => "Mike"})
#     expect(new_client.name()).to(eq("Mike"))
#     end
#   end
#
#   describe('.all') do
#     it('is an empty array at first') do
#       expect(Client.all()).to(eq([]))
#     end
#   end
#
#   describe('#save') do
#     it('will save a Stylist to the database') do
#       new_stylist = Stylist.new({:name => "Mike"})
#       new_stylist.save()
#       expect(Stylist.all()).to(eq([new_stylist]))
#     end
#   end
#
#
# end
