module Rgversion
  class Terminal
    def initialize(command, results)
      @command = command
      @results = results
    end

    def report
      render_errors
      render_output
    end

    def copy_to_clipboard
      return if @output.blank?
      if command_exists?
        system("echo \"#{@output}\" | #{clarified_command}")
        puts "\nCopied to your clipboard!".green
      else
        render_instructions
      end
    end

    private

    def render_errors
      return if @results[:errors].blank?
      puts @results[:errors].join("\n").red
      puts unless @results[:gems].blank?
    end

    def render_output
      return if @results[:gems].blank?
      @output = @results[:gems].join("\n")
      puts @output
    end

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

    def render_instructions
      if @command.nil?
        puts "\nRgversion doesn't support copy to clipboard feature if your OS isn't macOS or Linux. You can manually copy output above."
      else
        puts "\nUnable to copy to clipboard because #{@command} is missed.\nTry the command below if you are on Ubuntu/Debian:"
        puts "sudo apt-get install #{@command}"
      end
    end
  end
end
