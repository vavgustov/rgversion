require "spec_helper"

RSpec.describe Rgversion::Terminal do
  let(:gems) { ["gem 'sinatra', '~> 2.0'"] }
  let(:errors) { ["this_gem not found"] }
  let(:terminal_with_args) { Rgversion::Terminal.new(gems: gems, errors: errors) }

  describe "#report" do
    it "render gems" do
      expect { terminal_with_args.report }.to output(/gem 'sinatra', '~> 2.0'/).to_stdout
    end

    it "render errors" do
      expect { terminal_with_args.report }.to output(/this_gem not found/).to_stdout
    end
  end
end
