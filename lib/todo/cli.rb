$LOAD_PATH.unshift File.expand_path('../../../config', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../../app/models', __FILE__)

require 'boot'
require 'list'

module Todo
  module CLI
    
    def self.add(list_name, list_item)
      
      
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
