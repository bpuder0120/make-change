require 'pry'

def make_cents(currency)
  set = currency.split(", ")
  cents = 0
  set.each do |unit|
    unit = unit.split(" ")
    amount = unit[0].to_i

    if unit[1].include?("quarter")
      cents += amount * 25
    elsif unit[1].include?("dime")
      cents += amount * 10
    elsif unit[1].include?("nickel")
      cents += amount * 5
    else
      cents += amount
    end

  end

  "#{cents} cents"
end
