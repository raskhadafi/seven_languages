# Modify the CSV application to support an each method to return a CsvRow object.
# Use method_missing on that CsvRow to return the value for the column for a given heading.
# For example, for the file:
#
#  one, two
#  lions, tigers
#
# allow an API that works like this:
#
#  csv = RubyCsv.new
#  csv.each {|row| puts row.one}
#
# This should print "lions".

class CsvRow
  attr_accessor :content, :headers

  def initialize(headers, content)
    @headers = headers
    @content = content
  end

  def method_missing(name, *args)
    if index = @headers.index(name.to_s)
      @content[index]
    else
      raise("#{name}: no such column name")
    end
  end
end

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')


      @csv_contents = file.inject([]) do |out, row|
        out << row.chomp.split(', ')

        out
      end
    end

    attr_accessor :csv_contents, :headers

    def initialize
      read
    end

    def each
      @csv_contents.each do |content|
        yield CsvRow.new(@headers, content)
      end
    end
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end


csv = RubyCsv.new

puts csv.headers.inspect
puts csv.csv_contents.inspect
csv.each {|row| puts row.one }
