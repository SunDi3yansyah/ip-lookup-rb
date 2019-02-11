require "test_helper"

class Ip::LookupTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ip::Lookup::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
end
