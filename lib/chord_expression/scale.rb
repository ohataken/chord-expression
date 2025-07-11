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
  end
end
