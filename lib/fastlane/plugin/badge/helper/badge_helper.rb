module Fastlane
  module Helper
    class BadgeHelper
      # class methods that you define here become available in your action
      # as `Helper::BadgeHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the badge plugin helper!")
      end
    end
  end
end
