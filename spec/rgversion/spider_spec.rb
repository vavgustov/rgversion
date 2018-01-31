require "spec_helper"

RSpec.describe Rgversion::Spider do
  let(:spider_gem_not_exists) { Rgversion::Spider.new(%w[not-existing-gem-one1], Rgversion::SELECTOR) }
  let(:spider_with_correct_selector) { Rgversion::Spider.new(%w[rgversion], Rgversion::SELECTOR) }
  let(:spider_with_wrong_selector) { Rgversion::Spider.new %w[rgversion], '#wrong_selector' }

  describe "#output" do
    context "with correct selector" do
      it "return error for not found gem" do
        expect(spider_gem_not_exists.walk[:errors].first).to match("not-existing-gem-one1 not found")
      end

      it "return correct version" do
        expect(spider_with_correct_selector.walk[:gems].first).to match(Regexp.union([Rgversion::VERSION, Rgversion::PREVIOUS_VERSION]))
      end
    end

    context "with wrong selector" do
      it "raise exception" do
        expect { spider_with_wrong_selector.walk }.to raise_error(Rgversion::WrongSelector)
      end
    end
  end
end
