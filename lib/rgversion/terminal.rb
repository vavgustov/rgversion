module Rgversion
  class Terminal
    def initialize(results)
      @results = results
    end

    def report
      render_errors
      render_output
    end

    def copy_to_clipboard
      return if @output.blank?
      `echo "#{@output}" | pbcopy`
      puts "\nCopied to your clipboard!".green
    end

    private

    def render_errors
      return if @results[:errors].blank?
      puts @results[:errors].join("\n").red
      puts unless @results[:gems].blank?
    end

    def render_output
      return if @results[:gems].blank?
      @output = @results[:gems].join("\n")
      puts @output
    end
  end
end
