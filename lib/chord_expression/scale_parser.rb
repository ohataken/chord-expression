module ChordExpression
  class ScaleParser
    def initialize(scale_string)
      @scale_string = scale_string
    end

    def root_note_parser
      NoteParser.new(@scale_string)
    end
  end
end
