class Product
  attr_accessor :name

  def initialize(*data)
    @name = data[0]
    @large = data[1].to_i
    @medium = data[2].to_i
    @small = data[3].to_i
    @xsmall = data[4].to_i
  end
  def average
    (@large + @medium + @small + @xsmall)/4
  end
  def catalog
  	"#{@name}, #{@large}, #{@medium}, #{@small}"
  end
 

end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
# products_list.each do |object|
#   print object.inspect
# end
print products_list

products_list.each do |product|
  puts "EL precio promedio del producto #{product.name} es #{product.average}"
  File.open('nuevo_catalogo.txt', 'a') { |file| file.write("#{product.catalog}\n")}
end

