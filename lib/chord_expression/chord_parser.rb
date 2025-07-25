module ChordExpression
  class ChordParser
    def initialize(chord_string)
      @chord_string = chord_string
    end

    def parse
      Chord.new(self, parse_root_note)
    end

    def parse_root_note
      NoteParser.new(@chord_string).parse
    end

    def minor_major_seventh?
      @chord_string.include?('mmaj7')
    end

    def minor_seventh_flat_five?
      @chord_string.include?('min7flat5')
    end

    def minor_seventh?
      return if minor_major_seventh?
      return if minor_seventh_flat_five?

      @chord_string.include?('min7')
    end

    def major_seventh?
      return if minor_major_seventh?

      @chord_string.include?('maj7')
    end

    def dominant_seventh?
      return if minor_major_seventh?
      return if minor_seventh_flat_five?
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
      return if minor_seventh_flat_five?
      return if minor_seventh?
      return if major_seventh?
      return if dominant_seventh?
      return if diminished_seventh?
      return if minor_triad_flat_five?
      return if minor_triad?
      return if augmented_triad?
      return if diminished_triad?

      true
    end

    def minor_triad_flat_five?
      return if minor_seventh_flat_five?
      return if minor_seventh?

      @chord_string.include?('minflat5')
    end

    def minor_triad?
      return if minor_seventh_flat_five?
      return if minor_seventh?
      return if minor_triad_flat_five?

      @chord_string.include?('min')
    end

    def augmented_triad?
      @chord_string.include?('aug')
    end

    def diminished_triad?
      return if diminished_seventh?

      @chord_string.include?('dim')
    end
  end
end
