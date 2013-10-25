require 'minitest/pride'
require 'minitest/autorun'

class MiniTest::Spec
  class << self
    alias :context :describe
  end
end
