# frozen_string_literal: true

require 'test_helper'

class GrovepiTest < Grovepi::Test
  def test_temp
    assert_equal 60, Grovepi.temperature
  end
end
