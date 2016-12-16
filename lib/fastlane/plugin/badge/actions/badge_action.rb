module Fastlane
  module Actions
    class BadgeAction < Action
      def self.run(params)
        UI.message("The badge plugin is working!")
      end

      def self.description
        "Automatically add a badge to your app icon"
      end

      def self.authors
        ["Daniel Griesser", "HazAT"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        [
          "This action will add a light/dark badge onto your app icon.",
          "You can also provide your custom badge/overlay or add an shield for more customization more info:",
          "https://github.com/HazAT/badge",
          "**Note** If you want to reset the badge back to default you can use `sh 'git checkout -- <path>/Assets.xcassets/'`"
        ].join("\n")
      end

      def self.available_options
        require 'badge'
        puts Badge::Options.available_options
        []
      end

      def self.is_supported?(platform)
        [:ios, :mac, :android].include?(platform)
      end
    end
  end
end
