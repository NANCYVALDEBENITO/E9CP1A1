class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    data_hash = {}
    numbers = []
    traductions = []
    # Esto es una aberración y debe ser refactorizado!
    (0..9).each do |number|
      h = '-----' if number == 0
      h = '.----' if number == 1
      h = '..---' if number == 2
      h = '...--' if number == 3
      h = '....-' if number == 4
      h = '.....' if number == 5
      h = '-....' if number == 6
      h = '--...' if number == 7
      h = '---..' if number == 8
      h = '----.' if number == 9
      numbers.push(h)
      traductions.push(number)
    end
    data_hash[:numero] = numbers
    data_hash[:traduccion] = traductions
    # puts data_hash
    data_hash[:numero][number]
 end

  def to_morse
    generate_hash(@number)
  end
end
m = Morseable.new(3)
print m.to_morse

(0..9).each do |number|
  puts '.' * 5 * number
  puts '-' * 5 - number
end
