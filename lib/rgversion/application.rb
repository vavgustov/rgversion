module Rgversion
  module Application
    def self.run
      RgVersion::Terminal.copy_to_clipboard
    end
  end
end