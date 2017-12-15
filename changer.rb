class Changer

@@coins = [25, 10, 5, 1]

def self.make_change(cents)
  change = []
  @@coins.each do |coin|
    remainder = cents % coin
    if cents >= coin
      number_of_coins = (cents / coin)
      number_of_coins.times do
        change << coin
      end
    cents = cents - (number_of_coins * coin)
    end
    break if remainder == 0
  end
  return change
end

end
