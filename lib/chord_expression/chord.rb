module ChordExpression
  class Chord
    attr_reader :root_note

    def initialize(chord_parser, root_note)
      @chord_parser = chord_parser
      @root_note = root_note
    end

    # @see ChordParser#major_triad?
    # @see ChordParser#minor_triad?
    # @see ChordParser#minor_triad_flat_five?
    # @see ChordParser#augmented_triad?
    # @see ChordParser#diminished_triad?
    def triad?
      return true if @chord_parser.major_triad?
      return true if @chord_parser.minor_triad_flat_five?
      return true if @chord_parser.minor_triad?
      return true if @chord_parser.augmented_triad?
      return true if @chord_parser.diminished_triad?
    end

    # @see ChordParser#minor_major_seventh?
    # @see ChordParser#minor_seventh_flat_five?
    # @see ChordParser#minor_seventh?
    # @see ChordParser#major_seventh?
    # @see ChordParser#dominant_seventh?
    # @see ChordParser#diminished_seventh?
    def seventh?
      return true if @chord_parser.minor_major_seventh?
      return true if @chord_parser.minor_seventh_flat_five?
      return true if @chord_parser.minor_seventh?
      return true if @chord_parser.major_seventh?
      return true if @chord_parser.dominant_seventh?
      return true if @chord_parser.diminished_seventh?
    end

    # @see ChordParser#minor_major_seventh?
    # @see ChordParser#minor_seventh_flat_five?
    # @see ChordParser#minor_seventh?
    # @see ChordParser#minor_triad?
    # @see ChordParser#augmented_triad?
    # @see ChordParser#diminished_triad?
    def minor_third?
      return true if @chord_parser.minor_major_seventh?
      return true if @chord_parser.minor_seventh_flat_five?
      return true if @chord_parser.minor_seventh?
      return true if @chord_parser.minor_triad_flat_five?
      return true if @chord_parser.minor_triad?
      return true if @chord_parser.augmented_triad?
      return true if @chord_parser.diminished_triad?
    end

    # @see ChordParser#major_seventh?
    # @see ChordParser#dominant_seventh?
    # @see ChordParser#major_triad?
    # @see ChordParser#augmented_triad?
    def major_third?
      return true if @chord_parser.major_seventh?
      return true if @chord_parser.dominant_seventh?
      return true if @chord_parser.major_triad?
      return true if @chord_parser.augmented_triad?
    end

    def third
      if minor_third?
        @root_note.minor_third
      elsif major_third?
        @root_note.major_third
      end
    end

    def fifth
      if @chord_parser.diminished_seventh?
        @root_note.diminished_fifth
      elsif @chord_parser.augmented_triad?
        @root_note.augmented_fifth
      elsif @chord_parser.diminished_triad?
        @root_note.diminished_fifth
      elsif @chord_parser.minor_seventh_flat_five?
        @root_note.diminished_fifth
      elsif @chord_parser.minor_triad_flat_five?
        @root_note.diminished_fifth
      else
        @root_note.perfect_fifth
      end
    end

    def seventh
      return unless seventh?

      if @chord_parser.minor_major_seventh?
        @root_note.major_seventh
      elsif @chord_parser.minor_seventh_flat_five?
        @root_note.minor_seventh
      elsif @chord_parser.minor_seventh?
        @root_note.minor_seventh
      elsif @chord_parser.major_seventh?
        @root_note.major_seventh
      elsif @chord_parser.dominant_seventh?
        @root_note.minor_seventh
      elsif @chord_parser.diminished_seventh?
        @root_note.diminished_seventh
      end
    end

    def chord_modifier_name
      if @chord_parser.minor_major_seventh?
        'mmaj7'
      elsif @chord_parser.minor_seventh_flat_five?
        'min7flat5'
      elsif @chord_parser.minor_seventh?
        'min7'
      elsif @chord_parser.major_seventh?
        'maj7'
      elsif @chord_parser.dominant_seventh?
        '7'
      elsif @chord_parser.diminished_seventh?
        'dim7'
      elsif @chord_parser.minor_triad_flat_five?
        'minflat5'
      elsif @chord_parser.minor_triad?
        'min'
      elsif @chord_parser.major_triad?
        'maj'
      elsif @chord_parser.augmented_triad?
        'aug'
      elsif @chord_parser.diminished_triad?
        'dim'
      end
    end

    def chord_name_with_flat
      "#{@root_note.note_name_with_flat}#{chord_modifier_name}"
    end

    def chord_name_with_sharp
      "#{@root_note.note_name_with_sharp}#{chord_modifier_name}"
    end

    def chord_names
      if @root_note.black_key?
        [chord_name_with_sharp, chord_name_with_flat]
      else
        [chord_name_with_flat]
      end
    end
  end
end
