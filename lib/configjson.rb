require "configjson/version"
require 'json'
module Configjson

  class RubyConfig
      
      def initialize(config_dir_path = ".")
        env = readEnv
        path = config_dir_path + "/config/" + env + ".json"
        data = File.read(path);
        @json = JSON.parse(data)
      end

      def get(dot_notation)
        object = get_object(@json, dot_notation)
      end
      
      private

      def get_object(json, dot_notation)
        keys = dot_notation.split("\.")
        keys.each {|key|
          json = json[key]
        }
        json
      end
      
      def readEnv
        env = ENV["RUBY_ENV"]
        if env.nil?
          return "default"
        end
        env
      end
    end

end
