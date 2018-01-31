require "active_support/core_ext/object/blank"
require "awesome_print"
require "os"
require "rgversion/application"
require "rgversion/exceptions"
require "rgversion/spider"
require "rgversion/terminal"
require "rgversion/version"

module Rgversion
  SELECTOR = "#gemfile_text".freeze
end
