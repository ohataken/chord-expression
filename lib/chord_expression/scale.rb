module ChordExpression
  class Scale
    def initialize(root_note)
      @root_note = root_note
    end

    # @todo
    def major?
      true
    end

    def i_root_note
      if major?
        @root_note
      end
    end

    def ii_root_note
      if major?
        Note.new((@root_note.value + 2) % 12)
      end
    end

    def iii_root_note
      if major?
        Note.new((@root_note.value + 4) % 12)
      end
    end

    def iv_root_note
      if major?
        Note.new((@root_note.value + 5) % 12)
      end
    end

    def v_root_note
      if major?
        Note.new((@root_note.value + 7) % 12)
      end
    end

    def vi_root_note
      if major?
        Note.new((@root_note.value + 9) % 12)
      end
    end
  end
end
