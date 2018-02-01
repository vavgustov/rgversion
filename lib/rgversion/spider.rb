require "nokogiri"
require "open-uri"

module Rgversion
  class Spider
    def initialize(gems, selector)
      raise NoArguments, error_messages(:arguments) if gems.blank?
      @gems = gems
      @selector = selector
      @gems.sort!
    end

    def walk
      lines = []
      errors = []
      @gems.each do |gem|
        begin
          lines << grab_version(gem)
        rescue OpenURI::HTTPError, GemNotHosted
          errors << "#{gem} not found"
        end
      end
      { gems: lines, errors: errors }
    end

    private

    def error_messages(key)
      {
        arguments: "No gems passed as arguments. Try to use like this:\nrgversion rails sinatra",
        selector: "Selector #{@selector} doesn't exists on the page.\nRgversion should be updated."
      }[key].red
    end

    def grab_version(gem)
      gem_url = "https://rubygems.org/gems/#{gem}"
      gem_page = Nokogiri::HTML(open(gem_url))
      if gem_page.at(@selector).nil?
        raise GemNotHosted if gem_page.at("#markup").text().include? "This gem is not currently hosted on"
        raise WrongSelector, error_messages(:selector)
      end
      gem_page.at(@selector)["value"]
    end
  end
end
