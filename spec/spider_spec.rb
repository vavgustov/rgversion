require "spec_helper"

RSpec.describe Rgversion::Spider do
  let(:spider) { Rgversion::Spider.new(%w[rgversion]) }

  it "return correct version" do
    expect(spider.output.first).to match(Regexp.union([Rgversion::VERSION, Rgversion::PREVIOUS_VERSION]))
  end
end
