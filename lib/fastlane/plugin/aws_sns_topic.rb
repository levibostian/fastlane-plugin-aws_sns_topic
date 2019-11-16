require 'fastlane/plugin/aws_sns_topic/version'

module Fastlane
  module AwsSnsTopic
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Fastlane::AwsSnsTopic.all_classes.each do |current|
  require current
end
