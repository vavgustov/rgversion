require "spec_helper"

RSpec.describe Rgversion::Settings do
  it "has a selector" do
    expect(Rgversion::Settings::SELECTOR).not_to be nil
  end
end
