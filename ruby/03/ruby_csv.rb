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
    class CsvArray < ::Array

      def row(&block)
        puts block.to_s.inspect
      end

      def method_missing(sym, *args, &block)
        puts sym.to_s
      end
    end

    def read
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      @csv_contents = CsvArray.new

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents
    def initialize
      read
    end

    def each(&block)
      @csv_contents.row(&block)
    end
  end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end


csv = RubyCsv.new

puts csv.headers.inspect
puts csv.csv_contents.inspect
csv.each {|row| puts row.one }
