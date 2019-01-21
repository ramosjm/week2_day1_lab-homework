require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab_homework.rb')

class ClassesLabTest < MiniTest::Test

  def setup()
    @student_info = Student.new("Ralph","G9","Ruby")
    #@new_student_info = Student.new("Dave","G6")
  end

  def test_get_student_name()
    assert_equal("Ralph",@student_info.get_student_name())
  end

  def test_get_cohort()
    assert_equal("G9",@student_info.get_cohort())
  end

  def test_set_student_name()
    @student_info.set_student_name("Dave")
    assert_equal("Dave",@student_info.get_student_name())
  end

  def test_set_cohort()
    @student_info.set_student_cohort("G6")
    assert_equal("G6",@student_info.get_cohort())
  end

  def test_can_talk()
    @student_info.can_talk()
    assert_equal("I can talk!",@student_info.can_talk())
  end

  def test_favourite_language()
    assert_equal("My favourite language is Ruby!",@student_info.favourite_language())
  end
end
