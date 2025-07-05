module ChordExpression
  class NoteParser
    def initialize(note_string)
      @note_string = note_string
    end

    def parse
      Note.new(note_index)
    end

    def parse_note
      /^([A-G])/.match(@note_string)
    end

    def note_name
      parse_note[1]
    end

    def note_index
      if note_name == 'A' and flat?
        11
      elsif note_name == 'A' and sharp?
        1
      elsif note_name == 'A'
        0
      elsif note_name == 'B' and flat?
        1
      elsif note_name == 'B' and sharp?
        3
      elsif note_name == 'B'
        2
      elsif note_name == 'C' and flat?
        2
      elsif note_name == 'C' and sharp?
        4
      elsif note_name == 'C'
        3
      elsif note_name == 'D' and flat?
        4
      elsif note_name == 'D' and sharp?
        6
      elsif note_name == 'D'
        5
      elsif note_name == 'E' and flat?
        6
      elsif note_name == 'E' and sharp?
        8
      elsif note_name == 'E'
        7
      elsif note_name == 'F' and flat?
        6
      elsif note_name == 'F' and sharp?
        9
      elsif note_name == 'F'
        8
      elsif note_name == 'G' and flat?
        9
      elsif note_name == 'G' and sharp?
        11
      elsif note_name == 'G'
        10
      end
    end

    def parse_flat_sharp
      /^.(flat|sharp)?/.match(@note_string)
    end

    def flat?
      parse_flat_sharp[1] == 'flat'
    end

    def sharp?
      parse_flat_sharp[1] == 'sharp'
    end
  end
end
