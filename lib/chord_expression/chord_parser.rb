module ChordExpression
  class ChordParser
    def initialize(chord_string)
      @chord_string = chord_string
    end

    def parse_root_note
      NoteParser.new(@chord_string).parse_note
    end

    def minor_major_seventh?
      @chord_string.include?('mmaj7')
    end

    def minor_seventh?
      return if minor_major_seventh?
      @chord_string.include?('min7')
    end
  end
end
