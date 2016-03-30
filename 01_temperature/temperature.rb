require 'pry-byebug'

def ftoc(farenheit)

  5.0/9.0 * (farenheit - 32)
end

def ctof(c)
  (32 + (c * 9.0/5.0))
end
