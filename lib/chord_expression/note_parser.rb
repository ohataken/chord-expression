module ChordExpression
  class NoteParser
    def initialize(note_string)
      @note_string = note_string
    end
    
    def parse_note
      /^([A-G])/.match(@note_string)
    end

    def parse_flat_sharp
      /^.(flat|sharp)?/.match(@note_string)
    end
  end
end
