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
  end
end
