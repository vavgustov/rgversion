module Rgversion
  module Application
    def self.run
      terminal = Terminal.new ARGV
      terminal.copy_to_clipboard
    rescue NoArguments => ex
      puts ex.message
    end
  end
end
