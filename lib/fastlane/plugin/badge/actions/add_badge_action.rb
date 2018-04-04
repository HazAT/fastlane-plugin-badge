module Fastlane
  module Actions
    class AddBadgeAction < Action
      def self.run(params)
        Actions.verify_gem!('badge')
        Helper::BadgeHelper.run(params)
      end

      def self.description
        "Automatically add a badge to your app icon"
      end

      def self.authors
        ["HazAT"]
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
        Helper::BadgeHelper.available_options
      end

      def self.example_code
        [
          'add_badge(dark: true)',
          'add_badge(alpha: true)',
          'add_badge(custom: "/Users/xxx/Desktop/badge.png")',
          'add_badge(shield: "Version-0.0.3-blue", no_badge: true)'
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac, :android].include?(platform)
      end
    end
  end
end
