# class Stylist
#   attr_reader(:id, :name)
#
#   define_method(:initialize) do |attributes|
#     @id = attributes[:id] || nil
#     @name = attributes[:name]
#   end
#
#   define_singleton_method(:all) do
#     returned_stylists = DB.exec('SELECT * FROM stylists;')
#     results = []
#     returned_stylists.each() do |stylist|
#       results.push(Stylist.new({:id => stylist.fetch('id').to_i(), :name => stylist.fetch('name')}))
#     end
#     results
#   end
#
#   define_method(:save) do
#     result = DB.exec("INSERT INTO stylists (name) VALUES ('#{@name}') RETURNING id;")
#     @id = result.first().fetch('id').to_i()
#   end
#
#
#
#
# end
