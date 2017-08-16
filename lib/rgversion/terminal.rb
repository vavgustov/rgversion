module Rgversion
  class Terminal
    def initialize(argv = [])
      raise NoArguments, 'No gems passed as arguments.' if argv.length.zero?
      @argv = argv
    end

    def copy_to_clipboard
      data = process_spider
      unless data.empty?
        output = data.join("\n")
        `echo "#{output}" | pbcopy`
        puts "#{output}\n\nCopied to your clipboard!"
      end
    end

    private

    def process_spider
      spider = Spider.new @argv
      spider.output
    end
  end
end
