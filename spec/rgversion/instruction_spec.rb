require "spec_helper"

RSpec.describe Rgversion::Instruction do
  let(:instruction_mac) { Rgversion::Instruction.new :pbcopy }
  let(:instruction_linux) { Rgversion::Instruction.new :xclip }
  let(:instruction_windows) { Rgversion::Instruction.new nil }

  describe "#render" do
    it "show nothing for mac" do
      expect(instruction_mac.render).to be_nil
    end

    it "show help for linux" do
      expect { instruction_linux.render }.to output(/sudo apt-get install/).to_stdout
    end

    it "show help for windows" do
      expect { instruction_windows.render }.to output(/rgversion doesn't support copy to clipboard feature/).to_stdout
    end
  end
end
