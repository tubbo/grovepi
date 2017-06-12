# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'grovepi'
require 'minitest/autorun'

module Grovepi
  class Test < Minitest::Test
    # add extra assertions here
  end
end
