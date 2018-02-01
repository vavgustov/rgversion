require "active_support/core_ext/object/blank"
require "active_support/dependencies/autoload"
require "awesome_print"
require "os"
require "rgversion/exceptions"
require "rgversion/version"

module Rgversion
  extend ActiveSupport::Autoload

  autoload :Application
  autoload :Clipboard
  autoload :Instruction
  autoload :Settings
  autoload :Spider
  autoload :Terminal
end
