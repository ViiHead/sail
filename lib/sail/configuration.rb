# frozen_string_literal: true

module Sail
  # Configuration
  # This class keeps the configuration
  # data for the gem.
  # Defaults be found here and can be
  # overridden in an initializer, environment
  # file or application.rb
  class Configuration
    attr_accessor :cache_life_span, :array_separator, :dashboard_auth_lambda,
                  :back_link_path

    def initialize
      @cache_life_span = 10.minutes
      @array_separator = ";"
      @dashboard_auth_lambda = nil
      @back_link_path = "root_path"
    end
  end
end
