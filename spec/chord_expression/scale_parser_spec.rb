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

  describe '#major?' do
    it 'returns true for Amaj' do
      parser = ChordExpression::ScaleParser.new('Amaj')
      expect(parser.major?).to eq(true)
    end

    it 'returns false for Amin' do
      parser = ChordExpression::ScaleParser.new('Amin')
      expect(parser.major?).to eq(false)
    end
  end

  describe '#minor?' do
    it 'returns false for Amaj' do
      parser = ChordExpression::ScaleParser.new('Amaj')
      expect(parser.minor?).to eq(false)
    end

    it 'returns true for Amin' do
      parser = ChordExpression::ScaleParser.new('Amin')
      expect(parser.minor?).to eq(true)
    end
  end
end
