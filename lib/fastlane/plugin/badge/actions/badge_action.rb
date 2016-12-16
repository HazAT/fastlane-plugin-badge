module Fastlane
  module Actions
    class BadgeAction < Action
      def self.run(params)
        Actions.verify_gem!('badge')
        
        options = {
          dark: params[:dark],
          custom: params[:custom],
          no_badge: params[:no_badge],
          shield: params[:shield],
          alpha: params[:alpha],
          shield_io_timeout: params[:shield_io_timeout],
          glob: params[:glob],
          alpha_channel: params[:alpha_channel],
          shield_gravity: params[:shield_gravity],
          shield_no_resize: params[:shield_no_resize]
        }
        
        Helper::BadgeHelper.run(options)
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
        Helper::BadgeHelper.available_options
      end

      def self.example_code
        [
          'badge(dark: true)',
          'badge(alpha: true)',
          'badge(custom: "/Users/xxx/Desktop/badge.png")',
          'badge(shield: "Version-0.0.3-blue", no_badge: true)'
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac, :android].include?(platform)
      end
    end
  end
end
