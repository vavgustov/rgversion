require "spec_helper"

RSpec.describe Rgversion::Application do
  let(:application_with_args) { Rgversion::Application.new ['sinatra'], Rgversion::SELECTOR }
  let(:application_without_args) { Rgversion::Application.new [], Rgversion::SELECTOR }

  describe "#run" do
    context "when args exists" do
      it "return expected values" do
        expect { application_with_args.run }.to output(/gem 'sinatra', /).to_stdout
      end
    end

    context "when args not exists" do
      it "render error message" do
        expect { application_without_args.run }.to output(/No gems passed as arguments/).to_stderr
      end
    end
  end
end
