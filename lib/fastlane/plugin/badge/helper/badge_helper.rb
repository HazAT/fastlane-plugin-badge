
module BadgeBridge
  class Bridge
    def self.available_options
      require 'badge'
      Badge::Options.available_options
    end

    def self.run(options)
      Badge::Runner.new.run('.', options)
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
        BadgeBridge::Bridge.available_options
      end

      def self.run(options)
        BadgeBridge::Bridge.run(options)
      end
    end
  end
end
