require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class PersonTest < MiniTest::Test
  def setup
    @person1 = Person.new("Matthew", 25)
  end

  def test_get_name
    assert_equal("Matthew", @person1.name)
  end
end
