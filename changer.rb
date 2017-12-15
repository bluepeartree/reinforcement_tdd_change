class Changer

@@coins = [25, 10, 5, 1]

def self.make_change(cents)
  change = []
  @@coins.each do |coin|
    if cents >= coin
      number_of_coins = (cents / coin)
      number_of_coins.times { change << coin }
      cents = cents - (number_of_coins * coin)
    end
  end
  return change
end

end
