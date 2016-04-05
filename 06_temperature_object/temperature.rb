class Temperature
  def initialize(temperature =  {})
    @temperature = temperature

  end

  def to_fahrenheit
    if @temperature.has_key?(:c)
      celcius = @temperature[:c]
      (32 + (celcius * 9.0/5.0))
    else
      @temperature[:f]
    end
  end

  def to_celsius
    if @temperature.has_key?(:f)
      farenheit = @temperature[:f]
      5.0/9.0 * (farenheit - 32)
    else
      @temperature[:c]
    end
  end

  def self.in_celsius(num)
    Temperature.new({:c => num})
  end

  def self.in_fahrenheit(num)
    Temperature.new({:f => num})
  end

end

class Celsius < Temperature
  def initialize(temp)
    # pass in an empty array because super is taking temp as its argument when it should be an empty hash
    super({})
    @temperature[:c] = temp
  end

end

class Fahrenheit < Temperature
  def initialize(temp)
    super({})
    @temperature[:f] = temp
  end

end
