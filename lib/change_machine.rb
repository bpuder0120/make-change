require 'pry'

def make_change(amount)
  remainder = amount.split(" ").first.to_i
  
  amounts = [25, 10, 5, 1].map do |val|
    amount = break_down(remainder, val)
    remainder -= val * amount
    amount
  end

  q_text = "#{amounts[0]} " + (amounts[0] > 1 ? "quarters" : "quarter") if amounts[0] > 0
  d_text = "#{amounts[1]} " + (amounts[1] > 1 ? "dimes" : "dime") if amounts[1] > 0
  n_text = "#{amounts[2]} " + (amounts[2] > 1 ? "nickels" : "nickel") if amounts[2] > 0
  p_text = "#{amounts[3]} " + (amounts[3] > 1 ? "pennies" : "penny") if amounts[3] > 0

  [q_text, d_text, n_text, p_text].select { |s| !(s.nil?) }.join(", ")
end

def break_down(remainder, value)
  amount = 0

  while remainder > 0 && remainder / value > 0
    amount += 1
    remainder -= value
  end

  amount
end
