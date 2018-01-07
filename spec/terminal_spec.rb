require "spec_helper"

RSpec.describe Rgversion::Terminal do
  let(:terminal) { Rgversion::Terminal.new(['rails', 'sinatra']) }

  context "without arguments" do
    it "raise exception" do
      expect { Rgversion::Terminal.new }.to raise_exception(Rgversion::NoArguments)
    end
  end

  describe "#copy_to_clipboard" do
    it "show message that data has been copied" do
      expect { terminal.copy_to_clipboard }.to output(/Copied to your clipboard!/).to_stdout
    end
  end
end
