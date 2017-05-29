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

end