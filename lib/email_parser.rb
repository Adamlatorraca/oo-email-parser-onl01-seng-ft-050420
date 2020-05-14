# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  attr_accessor :email


  def initialize(email)
    @email = email
  end

  def parse
      array = @email.split(/\s/).uniq
      array.collect {
        |string| if string[-1] == ","
          string.chop
        else
          string
        end
      }.uniq
  end
end
