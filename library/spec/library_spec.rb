require 'minitest/autorun'
require_relative '../library'

class TestLibrary < MiniTest::Test

  def setup
    @book01 = {
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       due_date: "01/12/16"}
    }
    @book02 = {
      title: "who_rules_the_world?",
      rental_details: {
        student_name: "Ross",
        due_date: "01/12/17"}
    }
    @library = [@book01, @book02]
  end

  def test_all_titles
    assert_equal("who_rules_the_world?", @library[1][:title])
  end

end