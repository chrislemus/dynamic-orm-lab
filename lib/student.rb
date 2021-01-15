require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'
require 'pry'

class Student < InteractiveRecord
  # attr_accessor :id, :name, :grade
  def initialize(attr_hash = {})
      self.class.column_names.each {|col_name|
        self.class.attr_accessor col_name.to_sym
      }
      attr_hash.each {|k, v| self.send("#{k}=", v)}
  end

end
