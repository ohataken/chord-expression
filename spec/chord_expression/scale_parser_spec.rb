# frozen_string_literal: true

RSpec.describe ChordExpression::ScaleParser do
  describe '#root_note_parser' do
    it 'returns a NoteParser for A' do
      parser = ChordExpression::ScaleParser.new('A')
      note_parser = parser.root_note_parser
      expect(note_parser).to be_a(ChordExpression::NoteParser)
    end

    it 'returns a NoteParser for Fsharp' do
      parser = ChordExpression::ScaleParser.new('Fsharp')
      note_parser = parser.root_note_parser
      expect(note_parser).to be_a(ChordExpression::NoteParser)
    end
  end
end
