require_relative "test_helper"
require "randr"
require "test/unit"

class TestGenerator < Test::Unit::TestCase

  def setup
    @gen = Randr::Generator.new
  end

  def test_generates_sequences
    10.times do
      a = Random.rand(100)
      b = Random.rand(100) + 100
      c = Random.rand(20)

      result = @gen.times(c).from(a).to(b)

      assert_equal result.size, c

      result.each do |num|
        assert num >= a
        assert num <= b
      end

    end
  end

end
