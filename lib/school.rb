# code here!
require 'pry'
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
#    @roster.sort {|a, b| a <=> b }
#    Hash[@roster.sort
    @roster.collect do |k, v|
      Hash[k.vsort[v.sort]]
    end
  end
end
