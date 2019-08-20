require "at_what_cost/version"
require "benchmark"

module AtWhatCost
  class Error < StandardError; end
  # Your code goes here...
end

class Proc
  def at_what_cost?
    Benchmark.bm do |x|
      x.report { self.() }
    end
  end
end
