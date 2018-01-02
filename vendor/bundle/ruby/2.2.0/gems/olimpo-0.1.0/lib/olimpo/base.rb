require 'olimpo/error'
require "httmultiparty"

module Olimpo
  class Base
    include HTTMultiParty
    base_uri Olimpo.base_uri
    basic_auth Olimpo.username, Olimpo.password
    debug_output $stdout

    protected

    def self.raise_exception(code, body)
      raise Olimpo::ServerError.new(code, body) if code >= 500
      raise Olimpo::ClientError.new(code, body) if code < 500
    end

  end
end
