require "randr/version"

module Randr

  class Generator

    def initialize
      @times = 1
      @from = 0
    end

    def times(num)
      @times = num
      return self
    end

    def from(num)
      @from = num
      return self
    end

    def to(num)
      @to = num
      return @times.times.map do
        @from + Random.rand(@to - @from + 1)
      end
    end

  end

end
