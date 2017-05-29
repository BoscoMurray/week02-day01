require 'minitest/autorun'
require_relative '../codeclan_student'

class TestStudent < MiniTest::Test

  def setup
    @student01 = Student.new("Zippy", 13)
  end

  def test_student_name
    assert_equal("Zippy", @student01.name)    
  end

end