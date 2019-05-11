require_relative './test_helper'

class TestEnFakerName < Test::Unit::TestCase
  def setup
    @tester = MyFaker::Name
  end

  def test_name
    assert @tester.name.match(/(\w+\.? ?){2,3}/)
  end

  def test_first_name
    assert @tester.first_name.match(/\w+/)
  end

  def test_male_first_name
    assert @tester.male_first_name.match(/\w+/)
  end

  def test_female_first_name
    assert @tester.female_first_name.match(/\w+/)
  end

  def test_last_name
    assert @tester.last_name.match(/\w+/)
  end

  def test_prefix
    assert @tester.prefix.match(/\w+\.?/)
  end

  def test_girls_name
    assert @tester.girls_name.match(/\w+/)
  end
end
