module Grovepi
  class PH
    ADC_REF = 5

    def initialize(sensor: 0)
      @sensor = sensor
    end

    # Raw pH electrode value
    def read!
      Grovepi.analog_read(@sensor)
    end

    # @return [Float] Converted pH value to float.
    def to_f
      (7 - 1000 * data * ADC_REF / 59.16 / 1023).to_f
    end
  end
end
