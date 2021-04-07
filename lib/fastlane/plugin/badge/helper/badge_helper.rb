
module BadgeBridge
  class Bridge
    def self.available_options
      require 'badge'
      Badge::Options.available_options
    end

    def self.run(options)
      path = options.fetch(:path)
      Badge::Runner.new.run(path, options)
    end
  end
end

module Fastlane
  module Helper
    class BadgeHelper
      # class methods that you define here become available in your action
      # as `Helper::BadgeHelper.your_method`
      #
      def self.available_options
        base_options = BadgeBridge::Bridge.available_options
        base_options.append(
          FastlaneCore::ConfigItem.new(
            key: :path,
            description: 'path for searching image files. The glob pattern is appended to this path',
            optional: true,
            default_value: '.'
          )
        )
      end

      def self.run(options)
        BadgeBridge::Bridge.run(options)
      end
    end
  end
end
