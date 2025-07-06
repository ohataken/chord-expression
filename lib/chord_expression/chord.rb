module ChordExpression
  class Chord
    attr_reader :root_note

    def initialize(chord_parser, root_note)
      @chord_parser = chord_parser
      @root_note = root_note
    end

    def triad?
      return if @chord_parser.minor_major_seventh?
      return if @chord_parser.minor_seventh?
      return if @chord_parser.major_seventh?
      return if @chord_parser.dominant_seventh?
      return if @chord_parser.diminished_seventh?

      true
    end

    def seventh?
      return if @chord_parser.major_triad?
      return if @chord_parser.minor_triad?
      return if @chord_parser.augmented_triad?
      return if @chord_parser.diminished_triad?

      true
    end

    def minor_third?
      return if @chord_parser.major_seventh?
      return if @chord_parser.dominant_seventh?
      return if @chord_parser.major_triad?
      return if @chord_parser.augmented_triad?

      true
    end

    def major_third?
      return if @chord_parser.minor_major_seventh?
      return if @chord_parser.minor_seventh?
      return if @chord_parser.minor_triad?
      return if @chord_parser.augmented_triad?
      return if @chord_parser.diminished_triad?

      true
    end
  end
end
