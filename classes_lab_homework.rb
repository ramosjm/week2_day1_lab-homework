class Student

  def initialize(student_name,cohort,language)
    @student_name = student_name
    @cohort = cohort
    @language = language
  end

  def get_student_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def set_student_name(new_name)
    return @student_name = new_name
  end

  def set_student_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def can_talk()
    return "I can talk!"
  end

  def set_language(language)
    return @language = language
  end

  def say_favourite_language
    return "My favourite language is #{@language}!"
  end

end
