require_relative 'visitor'

module Visitor
  class ListVisitor < Visitor
    attr_accessor :current_dir

    def initialize
      @current_dir = ''
    end

    def visit(target)
      if target.is_a?(File)
        puts "#{@current_dir}/#{target.to_string}"
      elsif target.is_a?(Directory)
        puts "#{@current_dir}/#{target.to_string}"
        save_dir = current_dir
        @current_dir += "/#{target.name}"
        target.dir.each do |t|
          t.accept(self)
        end

        @current_dir = save_dir
      end
    end
  end
end
