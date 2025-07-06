module ChordExpression
  class Note
    attr_reader :value

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

    def black_key?
      return true if @value == 1
      return true if @value == 4
      return true if @value == 6
      return true if @value == 9
      return true if @value == 11
    end

    def white_key?
      !black_key?
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

    def minor_third
      self.class.new((@value + 3) % 12)
    end

    def major_third
      self.class.new((@value + 4) % 12)
    end

    def perfect_fifth
      self.class.new((@value + 7) % 12)
    end

    def minor_seventh
      self.class.new((@value + 10) % 12)
    end

    def major_seventh
      self.class.new((@value + 11) % 12)
    end
  end
end
