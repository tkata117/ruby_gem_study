require_relative './test_helper'

class TestJaFakerName < Test::Unit::TestCase
  def setup
    MyFaker::Config.locale = :ja
    @tester = MyFaker::Name
  end

  def test_name
    assert @tester.name.match(/((\p{Han}|\p{Hiragana}|\p{Katakana}) ?){2,3}/)
  end

  def test_first_name
    assert @tester.first_name.match(/(\p{Han}|\p{Hiragana}|\p{Katakana})/)
  end

  def test_last_name
    assert @tester.last_name.match(/(\p{Han}|\p{Hiragana}|\p{Katakana})/)
  end
end
