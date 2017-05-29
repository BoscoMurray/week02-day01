class Student
  # attr_reader :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(number)
    @cohort = number
  end

  def talk
    return "I can talk!"
  end

  def say_fave_language(language)
    return "I love #{language}!"
  end
  
end