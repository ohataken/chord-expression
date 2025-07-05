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

    def major_seventh?
      return if minor_major_seventh?
      @chord_string.include?('maj7')
    end

    def dominant_seventh?
      return if minor_major_seventh?
      return if minor_seventh?
      return if major_seventh?
      return if diminished_seventh?
      @chord_string.include?('7')
    end

    def diminished_seventh?
      @chord_string.include?('dim7')
    end

    def major_triad?
      return if minor_major_seventh?
      return if minor_seventh?
      return if major_seventh?
      return if dominant_seventh?
      return if diminished_seventh?
      return if minor_triad?
      return if augmented_triad?
      return if diminished_triad?

      true
    end

    def minor_triad?
      return if minor_seventh?
      @chord_string.include?('min')
    end
  end
end
