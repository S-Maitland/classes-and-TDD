require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_homework.rb')

class StudentRecordTest < MiniTest::Test

  def test_get_student_name
    student = StudentRecord.new('Scott', 'G12')
    assert_equal('Scott', student.name)
  end
  def test_set_name
    student = StudentRecord.new('Scott', 'G12')
    student.name = 'James'
    assert_equal('James', student.name)
  end

  def test_set_cohort
    student = StudentRecord.new('Scott', 'G12')
    student.cohort = 'G13'
    assert_equal('G13', student.cohort)
  end

  def test_student_can_talk
    student = StudentRecord.new('Scott', 'G12')
    assert_equal('Hello, world!',student.student_can_talk) 
  end

  def test_get_students_favourite_language
    student = StudentRecord.new('Scott', 'G12')
    assert_equal('I love Ruby!', student.say_favourite_language('Ruby!'))
  end

end
