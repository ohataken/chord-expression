module ChordExpression
  class NoteParser
    def initialize(note_string)
      @note_string = note_string
    end
    
    def parse_note
      /^([A-G])/.match(@note_string)
    end

    def note_name
      parse_note[1]
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
