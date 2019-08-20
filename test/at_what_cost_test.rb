require "test_helper"

class AtWhatCostTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AtWhatCost::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_it_adds_method_to_proc
    p = Proc.new{ (1..100).map{|n| n**2}}
    assert p.respond_to?(:at_what_cost?)
  end
end
