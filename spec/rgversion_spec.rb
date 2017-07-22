require 'spec_helper'

RSpec.describe Rgversion do
  it 'has a version number' do
    expect(Rgversion::VERSION).not_to be nil
  end

  describe 'spider' do
    let(:spider) { Rgversion::Spider.new(%w[rgversion]) }

    it 'return correct version' do
      expect(spider.output.first).to match(Regexp.union([Rgversion::VERSION, Rgversion::PREVIOUS_VERSION]))
    end
  end
end
