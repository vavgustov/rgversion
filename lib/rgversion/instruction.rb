module Rgversion
  class Instruction
    def initialize(command)
      @command = command
    end

    def render
      if @command.nil?
        puts "\nWarning: at this moment rgversion doesn't support copy to clipboard feature if your OS isn't macOS or Linux."
        puts "You can manually copy output above."
      elsif @command == :xclip
        puts "\nWarning: unable to copy to clipboard because #{@command} is missed."
        puts "Try the command below if you are on Ubuntu/Debian:"
        puts "sudo apt-get install #{@command}"
      end
    end
  end
end
