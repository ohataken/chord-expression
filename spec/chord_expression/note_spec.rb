# frozen_string_literal: true

RSpec.describe ChordExpression::Note do
  describe '#note_name_with_flat' do
    it 'returns A' do
      note = ChordExpression::Note.new(0)
      expect(note.note_name).to eq('A')
    end

    it 'returns Bflat' do
      note = ChordExpression::Note.new(1)
      expect(note.note_name_with_flat).to eq('Bflat')
    end

    it 'returns B' do
      note = ChordExpression::Note.new(2)
      expect(note.note_name_with_flat).to eq('B')
    end

    it 'returns C' do
      note = ChordExpression::Note.new(3)
      expect(note.note_name_with_flat).to eq('C')
    end

    it 'returns Dflat' do
      note = ChordExpression::Note.new(4)
      expect(note.note_name_with_flat).to eq('Dflat')
    end

    it 'returns D' do
      note = ChordExpression::Note.new(5)
      expect(note.note_name_with_flat).to eq('D')
    end

    it 'returns Eflat' do
      note = ChordExpression::Note.new(6)
      expect(note.note_name_with_flat).to eq('Eflat')
    end

    it 'returns E' do
      note = ChordExpression::Note.new(7)
      expect(note.note_name_with_flat).to eq('E')
    end

    it 'returns F' do
      note = ChordExpression::Note.new(8)
      expect(note.note_name_with_flat).to eq('F')
    end

    it 'returns Gflat' do
      note = ChordExpression::Note.new(9)
      expect(note.note_name_with_flat).to eq('Gflat')
    end

    it 'returns G' do
      note = ChordExpression::Note.new(10)
      expect(note.note_name_with_flat).to eq('G')
    end

    it 'returns Aflat' do
      note = ChordExpression::Note.new(11)
      expect(note.note_name_with_flat).to eq('Aflat')
    end
  end

  describe '#note_name_with_sharp' do
    it 'returns A' do
      note = ChordExpression::Note.new(0)
      expect(note.note_name_with_sharp).to eq('A')
    end

    it 'returns Asharp' do
      note = ChordExpression::Note.new(1)
      expect(note.note_name_with_sharp).to eq('Asharp')
    end

    it 'returns B' do
      note = ChordExpression::Note.new(2)
      expect(note.note_name_with_sharp).to eq('B')
    end

    it 'returns C' do
      note = ChordExpression::Note.new(3)
      expect(note.note_name_with_sharp).to eq('C')
    end

    it 'returns Csharp' do
      note = ChordExpression::Note.new(4)
      expect(note.note_name_with_sharp).to eq('Csharp')
    end

    it 'returns D' do
      note = ChordExpression::Note.new(5)
      expect(note.note_name_with_sharp).to eq('D')
    end

    it 'returns Dsharp' do
      note = ChordExpression::Note.new(6)
      expect(note.note_name_with_sharp).to eq('Dsharp')
    end

    it 'returns E' do
      note = ChordExpression::Note.new(7)
      expect(note.note_name_with_sharp).to eq('E')
    end

    it 'returns F' do
      note = ChordExpression::Note.new(8)
      expect(note.note_name_with_sharp).to eq('F')
    end

    it 'returns Fsharp' do
      note = ChordExpression::Note.new(9)
      expect(note.note_name_with_sharp).to eq('Fsharp')
    end

    it 'returns G' do
      note = ChordExpression::Note.new(10)
      expect(note.note_name_with_sharp).to eq('G')
    end

    it 'returns Gsharp' do
      note = ChordExpression::Note.new(11)
      expect(note.note_name_with_sharp).to eq('Gsharp')
    end
  end
end
