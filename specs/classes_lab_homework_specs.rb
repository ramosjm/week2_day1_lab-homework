require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab_homework.rb')

class ClassesLabTest < MiniTest::Test

  def setup()
    @student_info = Student.new("Ralph","G9")
  end

  def test_get_student_name()
    assert_equal("Ralph",@student_info.get_student_name())
  end

end
