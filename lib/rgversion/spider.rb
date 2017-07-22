require 'nokogiri'
require 'open-uri'

module Rgversion
  class Spider
    def initialize(gems)
      @gems = gems
    end

    def output
      gem_text = []
      @gems.each do |gem|
        begin
          gem_text << grab_version(gem)
        rescue OpenURI::HTTPError
          puts "#{gem_url} not found"
        end
      end
      gem_text
    end

    private

    def grab_version(gem)
      gem_url = "https://rubygems.org/gems/#{gem}"
      gem_page = Nokogiri::HTML(open(gem_url))
      gem_page.at('#gemfile_text')['value']
    end
  end
end