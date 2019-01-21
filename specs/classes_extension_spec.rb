require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_extension.rb')

class MyLibraryTest < MiniTest::Test

  def setup()
      @library = MyLibrary.new([
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
            }
        },
        {
          title: "curiosity",
          rental_details: {
            student_name: "Joan",
            date: "05/10/18"
            }
        },
        {
          title: "discovery",
          rental_details: {
            student_name: "Steve",
            date: "03/04/17"
            }
        }
    ])
  end

  def test_get_books()
    assert_equal(@library,@library.get_books())
  end

end
