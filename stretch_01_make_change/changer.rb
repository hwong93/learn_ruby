require 'pry-byebug'

class Changer

  @@penny = 1
  @@nickel = 5
  @@dime = 10
  @@quarter = 25


  def self.make_change(amount)
    new_amount = 0
    change = []
    if amount % @@quarter == 0
      num = amount / @@quarter
      num.times do
        change << @@quarter
      end
      new_amount = amount - (@@quarter*num)
    else
    # if amount / @@quarter > 0
      num = amount / @@quarter
      new_amount = amount - (@@quarter*num)
      num.times do
        change << @@quarter
      end
    end

    if new_amount % @@dime == 0
      num = new_amount / @@dime
      num.times do
        change << @@dime
      end
      new_amount = @@dime*num-new_amount
    else
      num = new_amount / @@dime
      new_amount = new_amount - (@@dime*num)
      num.times do
        change << @@dime
      end
    end
    if new_amount % @@nickel == 0
      num = new_amount / @@nickel
      num.times do
        change << @@nickel
      end
      new_amount = new_amount - (@@nickel * num)
    else
      num = new_amount / @@nickel
      new_amount = new_amount - (@@nickel * num)
      num.times do
        change << @@nickel
      end
    end

    if new_amount % @@penny == 0
      num = new_amount / @@penny
      num.times do
        change << @@penny
      end
      new_amount = new_amount - (@@penny * num)
    else
      num = new_amount / @@penny
      new_amount = new_amount - (@@penny * num)
      num.times do
        change << @@penny
      end
    end
    change
  end
end

Changer.make_change(7)
