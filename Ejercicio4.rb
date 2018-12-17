propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

class Dog
  attr_accessor :hash
  def inizialize
    @hash = hash
  end

  def ladrar(hash)
    puts "#{hash[:nombre]} está ladrando!"
  end
end

dog_name = Dog.new
dog_name.ladrar(propiedades)
