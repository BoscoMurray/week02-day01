class Library
  attr_accessor :library, :title, :student_name, :due_date

  def initialize(title)
    @library = []
    @title = title
    @student_name = ""
    @due_date = ""
  end


end