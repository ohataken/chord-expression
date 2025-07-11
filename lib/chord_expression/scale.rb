module ChordExpression
  class Scale
    def initialize(scale_parser, root_note)
      @scale_parser = scale_parser
      @root_note = root_note
    end

    # @todo
    def major?
      true
    end

    def i_root_note
      @root_note
    end

    def ii_root_note
      Note.new((@root_note.value + 2) % 12)
    end

    def iii_root_note
      if @scale_parser.major?
        Note.new((@root_note.value + 4) % 12)
      elsif @scale_parser.minor?
        Note.new((@root_note.value + 3) % 12)
      end
    end

    def iv_root_note
      Note.new((@root_note.value + 5) % 12)
    end

    def v_root_note
      Note.new((@root_note.value + 7) % 12)
    end

    def vi_root_note
      if @scale_parser.major?
        Note.new((@root_note.value + 9) % 12)
      elsif @scale_parser.minor?
        Note.new((@root_note.value + 8) % 12)
      end
    end

    def vii_root_note
      if @scale_parser.major?
        Note.new((@root_note.value + 11) % 12)
      elsif @scale_parser.minor?
        Note.new((@root_note.value + 10) % 12)
      end
    end

    def i_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{i_root_note.note_name_with_sharp}maj7")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{i_root_note.note_name_with_flat}min7")
        chord_parser.parse
      end
    end

    def ii_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{ii_root_note.note_name_with_sharp}min7")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{ii_root_note.note_name_with_flat}min7flat5")
        chord_parser.parse
      end
    end

    def iii_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{iii_root_note.note_name_with_sharp}min7")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{iii_root_note.note_name_with_flat}maj7")
        chord_parser.parse
      end
    end

    def iv_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{iv_root_note.note_name_with_sharp}maj7")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{iv_root_note.note_name_with_flat}min7")
        chord_parser.parse
      end
    end

    def v_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{v_root_note.note_name_with_sharp}7")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{v_root_note.note_name_with_flat}min7")
        chord_parser.parse
      end
    end

    def vi_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{vi_root_note.note_name_with_sharp}min7")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{vi_root_note.note_name_with_flat}maj7")
        chord_parser.parse
      end
    end

    def vii_seventh_chord
      if @scale_parser.major?
        chord_parser = ChordParser.new("#{vii_root_note.note_name_with_sharp}min7flat5")
        chord_parser.parse
      elsif @scale_parser.minor?
        chord_parser = ChordParser.new("#{vii_root_note.note_name_with_flat}7")
        chord_parser.parse
      end
    end
  end
end
