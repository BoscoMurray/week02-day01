require 'minitest/autorun'
require_relative '../codeclan_student'

class TestStudent < MiniTest::Test

  def setup
    @student01 = Student.new("Zippy", 13)
  end

  def test_get_name
    assert_equal("Zippy", @student01.get_name)
  end

  def test_get_cohort
    assert_equal(13, @student01.get_cohort)
  end

  def test_set_name
    @student01.set_name("Bungle")
    assert_equal("Bungle", @student01.get_name)
  end

  def test_set_cohort
    @student01.set_cohort(14)
    assert_equal(14, @student01.get_cohort)
  end

end