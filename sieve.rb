class Sieve 
  attr_accessor :numbers
  def initialize number
    @numbers = (2..number).map {|n| n}
  end
  
  def primes
    primes = [];
    while numbers.empty? == false
      primes.unshift(numbers[0])
      numbers.each_with_index do |num, index|
        numbers.delete(num) if num % primes[0] == 0 
      end
    end
    primes.reverse
  end
end