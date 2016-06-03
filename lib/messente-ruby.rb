require "messente-ruby/version"
require "messente-ruby/configuration"

module Messente
  attr_reader :configuration

  def self.configure(&block)
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
end
