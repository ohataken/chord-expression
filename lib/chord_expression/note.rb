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
  end
end
