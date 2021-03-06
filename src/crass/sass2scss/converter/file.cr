require "../converter"

module Crass
  module Sass2Scss
    class SassFile < Converter
      def initialize(input : File, output : String? = nil, options : Int32 = 0)
        super
        lines = [] of String
        input.each_line(false) do |line|
          lines << line
        end
        convert_to_scss(lines.join)
      end
    end
  end
end
