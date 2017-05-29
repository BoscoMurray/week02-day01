require 'minitest/autorun'
require_relative '../codeclan_student'

class TestStudent < MiniTest::Test

  def setup
    @student01 = Student.new("Zippy", 13)
  end

  def test_get_name
    assert_equal("Zippy", @student01.name)
  end

  def test_get_cohort
    assert_equal(13, @student01.cohort)
  end

  def test_set_name
    @student01.name=("Bungle")
    assert_equal("Bungle", @student01.name)
  end

  def test_set_cohort
    @student01.cohort=(14)
    assert_equal(14, @student01.cohort)
  end

  def test_talk
    assert_equal("I can talk!", @student01.talk)
  end

  def test_say_fave_language
    assert_equal("I love Ruby!", @student01.say_fave_language("Ruby"))
  end

end