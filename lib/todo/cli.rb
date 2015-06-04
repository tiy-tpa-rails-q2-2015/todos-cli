$LOAD_PATH.unshift File.expand_path('../../../config', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../../app/models', __FILE__)

require 'boot'
require 'list'
require 'item'

module Todo
  module CLI
    
    def self.add(list_name, list_item)
      list = List.find_by :name => list_name
      unless list
        list = List.create :name => list_name
        puts "Created list: #{list.name}."
      else
        puts "Found list #{list.name}."
      end
      puts "Creating list item."
      list.items.create :task => list_name
    end

    def self.run
      case ARGV[0] 
        when "add"
          add(*ARGV[1..-1])
          
        when "list"
          puts "You're listing things: #{ARGV[1..-1]}"
      end
    end
  end
end
