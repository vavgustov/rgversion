module Rgversion
  class Application
    def initialize(gems, selector)
      @gems = gems
      @selector = selector
    end

    def run
      terminal = Terminal.new(results)
      terminal.report
      terminal.copy_to_clipboard if OS.mac?
    rescue StandardError => ex
      $stderr.puts ex.message
    end

    private

    def results
      spider = Spider.new(@gems, @selector)
      spider.walk
    end
  end
end
