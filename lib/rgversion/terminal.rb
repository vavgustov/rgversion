module RgVersion
  # Terminal operations
  module Terminal
    def self.copy_to_clipboard
      version = RgVersion::Spider.grab_version
      unless version.empty?
        version = version.join("\n")
        `echo "#{version}" | pbcopy`
        puts "#{version}\n\nCopied to your clipboard!"
      end
    end
  end
end
