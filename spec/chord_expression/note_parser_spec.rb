# frozen_string_literal: true

RSpec.describe ChordExpression::NoteParser do
  describe '#parse_note' do
    it 'parses A' do
      parser = ChordExpression::NoteParser.new('A')
      expect(parser.parse_note[1]).to eq('A')
    end

    it 'parses Asharp' do
      parser = ChordExpression::NoteParser.new('Asharp')
      expect(parser.parse_note[1]).to eq('A')
    end

    it 'parses Bflat' do
      parser = ChordExpression::NoteParser.new('Bflat')
      expect(parser.parse_note[1]).to eq('B')
    end

    it 'parses B' do
      parser = ChordExpression::NoteParser.new('B')
      expect(parser.parse_note[1]).to eq('B')
    end

    it 'parses C' do
      parser = ChordExpression::NoteParser.new('C')
      expect(parser.parse_note[1]).to eq('C')
    end

    it 'parses Csharp' do
      parser = ChordExpression::NoteParser.new('Csharp')
      expect(parser.parse_note[1]).to eq('C')
    end

    it 'parses Dflat' do
      parser = ChordExpression::NoteParser.new('Dflat')
      expect(parser.parse_note[1]).to eq('D')
    end

    it 'parses D' do
      parser = ChordExpression::NoteParser.new('D')
      expect(parser.parse_note[1]).to eq('D')
    end

    it 'parses Dsharp' do
      parser = ChordExpression::NoteParser.new('Dsharp')
      expect(parser.parse_note[1]).to eq('D')
    end

    it 'parses Eflat' do
      parser = ChordExpression::NoteParser.new('Eflat')
      expect(parser.parse_note[1]).to eq('E')
    end

    it 'parses E' do
      parser = ChordExpression::NoteParser.new('E')
      expect(parser.parse_note[1]).to eq('E')
    end

    it 'parses F' do
      parser = ChordExpression::NoteParser.new('F')
      expect(parser.parse_note[1]).to eq('F')
    end 

    it 'parses Fsharp' do
      parser = ChordExpression::NoteParser.new('Fsharp')
      expect(parser.parse_note[1]).to eq('F')
    end

    it 'parses Gflat' do
      parser = ChordExpression::NoteParser.new('Gflat')
      expect(parser.parse_note[1]).to eq('G')
    end

    it 'parses G' do
      parser = ChordExpression::NoteParser.new('G')
      expect(parser.parse_note[1]).to eq('G')
    end

    it 'parses Gsharp' do
      parser = ChordExpression::NoteParser.new('Gsharp')
      expect(parser.parse_note[1]).to eq('G')
    end

    it 'parses Aflat' do
      parser = ChordExpression::NoteParser.new('Aflat')
      expect(parser.parse_note[1]).to eq('A')
    end
  end
end
