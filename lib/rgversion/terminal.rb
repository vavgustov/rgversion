module Rgversion
  # Terminal operations
  module Terminal
    def self.copy_to_clipboard
      spider = Rgversion::Spider.new(ARGV)
      version = spider.output
      unless version.empty?
        version = version.join("\n")
        `echo "#{version}" | pbcopy`
        puts "#{version}\n\nCopied to your clipboard!"
      end
    end
  end
end
