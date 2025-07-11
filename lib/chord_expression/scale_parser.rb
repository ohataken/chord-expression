module ChordExpression
  class ScaleParser
    def initialize(scale_string)
      @scale_string = scale_string
    end

    def root_note_parser
      NoteParser.new(@scale_string)
    end

    def parse
      root_note = root_note_parser.parse
      Scale.new(self, root_note)
    end

    def major?
      @scale_string.include?('maj')
    end

    def minor?
      @scale_string.include?('min')
    end
  end
end
