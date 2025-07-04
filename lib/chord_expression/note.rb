module ChordExpression
  class Note
    def initialize(value)
      @value = value
    end

    def note_name
      case @value
      when 0
        'A'
      when 2
        'B'
      when 3
        'C'
      when 5
        'D'
      when 7
        'E'
      when 8
        'F'
      when 10
        'G'
      end
    end

    def note_name_with_flat
      case @value
      when 1
        'Bflat'
      when 4
        'Dflat'
      when 6
        'Eflat'
      when 9
        'Gflat'
      when 11
        'Aflat'
      else
        note_name
      end
    end

    def note_name_with_sharp
      case @value
      when 1
        'Asharp'
      when 4
        'Csharp'
      when 6
        'Dsharp'
      when 9
        'Fsharp'
      when 11
        'Gsharp'
      else
        note_name
      end
    end
  end
end
