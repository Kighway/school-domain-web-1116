class School

  attr_reader :roster, :name

  def initialize (name)
    @name = name
    @roster = Hash.new { |hash, key| hash[key] = Array.new }
  end

  def add_student (name, grade)
    @roster[grade] << name
  end

  def grade (grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort!
    end
  end


end
