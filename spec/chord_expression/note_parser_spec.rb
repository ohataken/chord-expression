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

  describe '#parse_flat_sharp' do
    it 'parses A' do
      parser = ChordExpression::NoteParser.new('A')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end

    it 'parses Asharp' do
      parser = ChordExpression::NoteParser.new('Asharp')
      expect(parser.parse_flat_sharp[1]).to eq('sharp')
    end

    it 'parses Bflat' do
      parser = ChordExpression::NoteParser.new('Bflat')
      expect(parser.parse_flat_sharp[1]).to eq('flat')
    end

    it 'parses B' do
      parser = ChordExpression::NoteParser.new('B')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end

    it 'parses C' do
      parser = ChordExpression::NoteParser.new('C')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end

    it 'parses Csharp' do
      parser = ChordExpression::NoteParser.new('Csharp')
      expect(parser.parse_flat_sharp[1]).to eq('sharp')
    end

    it 'parses Dflat' do
      parser = ChordExpression::NoteParser.new('Dflat')
      expect(parser.parse_flat_sharp[1]).to eq('flat')
    end

    it 'parses D' do
      parser = ChordExpression::NoteParser.new('D')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end

    it 'parses Dsharp' do
      parser = ChordExpression::NoteParser.new('Dsharp')
      expect(parser.parse_flat_sharp[1]).to eq('sharp')
    end

    it 'parses Eflat' do
      parser = ChordExpression::NoteParser.new('Eflat')
      expect(parser.parse_flat_sharp[1]).to eq('flat')
    end

    it 'parses E' do
      parser = ChordExpression::NoteParser.new('E')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end

    it 'parses F' do
      parser = ChordExpression::NoteParser.new('F')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end 

    it 'parses Fsharp' do
      parser = ChordExpression::NoteParser.new('Fsharp')
      expect(parser.parse_flat_sharp[1]).to eq('sharp')
    end

    it 'parses Gflat' do
      parser = ChordExpression::NoteParser.new('Gflat')
      expect(parser.parse_flat_sharp[1]).to eq('flat')
    end

    it 'parses G' do
      parser = ChordExpression::NoteParser.new('G')
      expect(parser.parse_flat_sharp[1]).to be_nil
    end

    it 'parses Gsharp' do
      parser = ChordExpression::NoteParser.new('Gsharp')
      expect(parser.parse_flat_sharp[1]).to eq('sharp')
    end

    it 'parses Aflat' do
      parser = ChordExpression::NoteParser.new('Aflat')
      expect(parser.parse_flat_sharp[1]).to eq('flat')
    end
  end

  describe '#note_index' do
    it 'returns 0' do
      parser = ChordExpression::NoteParser.new('A')
      expect(parser.note_index).to eq(0)
    end

    it 'returns 1' do
      parser = ChordExpression::NoteParser.new('Asharp')
      expect(parser.note_index).to eq(1)
    end

    it 'returns 2' do
      parser = ChordExpression::NoteParser.new('B')
      expect(parser.note_index).to eq(2)
    end

    it 'returns 3' do
      parser = ChordExpression::NoteParser.new('C')
      expect(parser.note_index).to eq(3)
    end 

    it 'returns 4' do
      parser = ChordExpression::NoteParser.new('Csharp')
      expect(parser.note_index).to eq(4)
    end

    it 'returns 5' do
      parser = ChordExpression::NoteParser.new('D')
      expect(parser.note_index).to eq(5)
    end

    it 'returns 6' do 
      parser = ChordExpression::NoteParser.new('Dsharp')
      expect(parser.note_index).to eq(6)
    end

    it 'returns 7' do
      parser = ChordExpression::NoteParser.new('E')
      expect(parser.note_index).to eq(7)
    end 

    it 'returns 8' do
      parser = ChordExpression::NoteParser.new('F')
      expect(parser.note_index).to eq(8)
    end

    it 'returns 9' do
      parser = ChordExpression::NoteParser.new('Fsharp')
      expect(parser.note_index).to eq(9)
    end

    it 'returns 10' do  
      parser = ChordExpression::NoteParser.new('G')
      expect(parser.note_index).to eq(10)
    end

    it 'returns 11' do
      parser = ChordExpression::NoteParser.new('Gsharp')
      expect(parser.note_index).to eq(11)
    end
  end
end
