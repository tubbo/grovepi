# frozen_string_literal: true

module Grovepi
  # Temperature and humidity sensor.
  class DHT
    def initialize
      @temperature = 0.0
      @humidity = 0.0
      reload!
    end

    # Retrieve information from the system.
    def reload!
      get_safe_data @temperature, @humidity
    end

    # @return [Float] Current temperature in Fahrenheit.
    def temperature
      reload!
      @temperature
    end

    # @return [Float] Current barometer reading.
    def humidity
      reload!
      @humidity
    end
  end
end
