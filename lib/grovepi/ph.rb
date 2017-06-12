module Grovepi
  class PH
    SENSOR = 0
    ADC_REF = 5

    def initialize
      @data = nil
      reload!
    end

    def reload!
      @data = Grovepi.analog_read(SENSOR)
    end

    def to_f
      (7 - 1000 * @data * ADC_REF / 59.16 / 1023).to_f
    end
  end
end
