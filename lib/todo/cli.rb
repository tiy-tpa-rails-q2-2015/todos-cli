$LOAD_PATH.unshift File.expand_path('../../../config', __FILE__)

require 'boot'

module Todo
  module CLI

    def self.run
      case ARGV[0]
      when "list"
        puts "You're listing things: #{ARGV[1..-1]}"
      end
    end
  end
end
