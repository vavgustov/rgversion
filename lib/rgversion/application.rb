module Rgversion
  module Application
    def self.run
      Rgversion::Terminal.copy_to_clipboard
    end
  end
end