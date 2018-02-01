module Rgversion
  class Clipboard
    def initialize(content, command)
      @content = content
      @command = command
    end

    def copy
      if command_exists?
        system("echo \"#{@content}\" | #{clarified_command}")
        puts "\nCopied to clipboard!".green
      else
        instruction = Instruction.new(@command)
        instruction.render
      end
    end

    private

    def clarified_command
      return "#{@command} -selection clipboard" if OS.linux?
      @command
    end

    def command_exists?
      return false if which(@command.to_s).nil?
      true
    end

    # based on https://stackoverflow.com/a/5471032
    # let's avoid find_executable from mkmf because in this case we need to supress logs
    def which(cmd)
      exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
      ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each do |ext|
          exe = File.join(path, "#{cmd}#{ext}")
          return exe if File.executable?(exe) && !File.directory?(exe)
        end
      end
      nil
    end
  end
end
