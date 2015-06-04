$LOAD_PATH.unshift File.expand_path('../../../config', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../../app/models', __FILE__)

require 'boot'
require 'list'

module Todo
  module CLI
    
    # Adds a new item to a list.
    #If the list does not exist it is automatically created.
    def self.add(list_name, list_item) 
      #find list by name.
      list = List.find_by name: list_name
      #if it does not exist
      unless list # or if !list
        #create a list.
        list = List.create name: list_name
        puts "Created list: #{list.name}."
      else
        puts "Found list #{list.name}."
      end
      puts "Creating list item."
      #create a list item.
                                       
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
