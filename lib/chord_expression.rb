# frozen_string_literal: true

require_relative "chord_expression/version"
require_relative "chord_expression/note"
require_relative "chord_expression/note_parser"
require_relative "chord_expression/chord"
require_relative "chord_expression/chord_parser"
require_relative "chord_expression/scale"
require_relative "chord_expression/scale_parser"

module ChordExpression
  class Error < StandardError; end
  # Your code goes here...
end
