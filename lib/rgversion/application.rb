module Rgversion
  class Application
    def initialize(gems, selector)
      @gems = gems
      @selector = selector
    end

    def run
      terminal = Terminal.new(command, results)
      terminal.report
      terminal.copy_to_clipboard
    rescue StandardError => ex
      $stderr.puts ex.message
    end

    private

    def results
      spider = Spider.new(@gems, @selector)
      spider.walk
    end

    def command
      return :pbcopy if OS.mac?
      return :xclip if OS.linux?
      nil
    end
  end
end
