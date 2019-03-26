class Library

  attr_accessor :title, :student_name, :due_date

  def initialize(:title, {:student_name, :due_date})
    @title = title
    @student_name = student_name
    @due_date = due_date
  end
end
