require 'spec_helper'

RSpec.describe Rgversion do
  it 'has a version number' do
    expect(Rgversion::VERSION).not_to be nil
  end

  describe 'spider' do
    let(:spider) { Rgversion::Spider.new(%w[rgversion]) }

    # this test will not work when version has been updated but not pushed to rubygems.org yet
    it 'return correct version' do
      expect(spider.output.first).to match('Rgversion::VERSION')
    end
  end
end
