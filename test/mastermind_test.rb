require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
# require '../lib/mastermind' ##This allows me to run individual tests.
# above with one dot allows me to run rake. why?

class MastermindTest < Minitest::Test
  def test_it_exists
    assert MastermindTest
  end
  # add

  def test_it_wins
    skip
    mm = Mastermind.new
    result = mm.execute("BBGB")
    assert result.downcase.include?("win")
  end
end
