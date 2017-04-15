require 'nokogiri'
require 'open-uri'

module RgVersion
  # Spider take content from https://rubygems.org/
  module Spider
    def self.grab_version
      gem_text = []
      ARGV.each do |arg|
        begin
          gem_url = "https://rubygems.org/gems/#{arg}"
          gem_page = Nokogiri::HTML(open(gem_url))
          gem_text << gem_page.at('#gemfile_text')['value']
        rescue OpenURI::HTTPError
          puts "#{gem_url} not found"
        end
      end
      gem_text
    end
  end
end