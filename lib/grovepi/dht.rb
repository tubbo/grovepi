module Grovepi
  class DHT
    attr_reader :temperature, :humidity

    def initialize
      @temperature = 0
      @humidity = 0
      reload!
    end

    # Retrieve information from the system.
    def reload!
      get_unsafe_data @temperature, @humidity
    end
  end
end
