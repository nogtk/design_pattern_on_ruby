module Facade
  class Database
    def self.properties(db_name)
      filename = db_name + '.txt'
      hash = {}
      File.open(filename, 'r') do |f|
        f.readlines(chomp: true).each do |line|
          elements = line.split('=')
          hash[elements[0]] = elements[1]
        end
      end

      hash
    end
  end
end
