class Morseable

  def initialize(number)
    @number = number
  end

  def morse
    # (0..9).each do |n|
    a = 0
    a = if @number <= 5
          '.' * @number + '-' * (5 - @number)
        else
          '-' * (@number - 5) + '.' * (5 - (@number - 5))
        end
    # end
    a
  end

  def generate_hash
    data_hash = {}
    numbers = []
    traductions = []
    # Esto es una aberración y debe ser refactorizado!
    # (0..9).each do |number|
    #   h = '-----' if number == 0
    #   h = '.----' if number == 1
    #   h = '..---' if number == 2
    #   h = '...--' if number == 3
    #   h = '....-' if number == 4
    #   h = '.....' if number == 5
    #   h = '-....' if number == 6
    #   h = '--...' if number == 7
    #   h = '---..' if number == 8
    #   h = '----.' if number == 9
    numbers.push(morse)
    traductions.push(@number)

    data_hash[:numero] = numbers
    data_hash[:traduccion] = traductions
    return data_hash
    
  end

end
m = Morseable.new(1)
print m.generate_hash

# (0..9).each do |number|
#   puts '.' * 5 * number
#   puts '-' * 5 - number
# end
