class StudentRecord
attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_can_talk
    return 'Hello, world!'
  end
  
  def say_favourite_language(sentence)
    return 'I love ' + sentence
  end


end
