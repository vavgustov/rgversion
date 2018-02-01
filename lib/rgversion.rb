require "active_support/core_ext/object/blank"
require "active_support/dependencies/autoload"
require "awesome_print"
require "os"

module Rgversion
  extend ActiveSupport::Autoload

  autoload :Application
  autoload :Clipboard
  autoload :Instruction
  autoload :Settings
  autoload :Spider
  autoload :Terminal
end

require_relative "rgversion/exceptions"
require_relative "rgversion/version"
