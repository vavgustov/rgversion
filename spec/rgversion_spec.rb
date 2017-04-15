require "spec_helper"

RSpec.describe Rgversion do
  it "has a version number" do
    expect(Rgversion::VERSION).not_to be nil
  end
end
