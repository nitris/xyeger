module Xyeger
  class Config
    attr_accessor :output,
                  :formatter,
                  :filter_parameters,
                  :filter,
                  :hostname,
                  :pid,
                  :app,
                  :env

    def initialize
      @output = STDOUT
      @formatter = Xyeger::Formatters::Json.new
      @filter_parameters = Rails.application.config.filter_parameters

      @hostname = ENV['XYEGER_HOSTNAME']
      @pid = $$
      @app = Rails.application.class.parent_name
      @env = Rails.env
    end
  end
end
