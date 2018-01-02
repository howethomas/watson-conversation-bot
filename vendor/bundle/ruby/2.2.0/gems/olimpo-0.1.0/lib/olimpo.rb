require "olimpo/version"
require "active_support/dependencies"

module Olimpo
  autoload :Base, "olimpo/base"

  # Username for authentication
  mattr_accessor :username
  @@username = nil

  # Password for authentication
  mattr_accessor :password
  @@password = nil

  # Password for authentication
  mattr_accessor :base_uri
  @@base_uri = nil

  # Method to set the authentication keys for the bot
  def configure
    yield self
  end
end
