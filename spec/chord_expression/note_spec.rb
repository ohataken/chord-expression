# frozen_string_literal: true

RSpec.describe ChordExpression::Note do
  describe '#black_key?' do
    it 'accepts A, then returns false' do
      note = ChordExpression::Note.new(0)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts Bflat, then returns true' do
      note = ChordExpression::Note.new(1)
      expect(note.black_key?).to be_truthy
    end

    it 'accepts B, then returns false' do
      note = ChordExpression::Note.new(2)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts C, then returns false' do
      note = ChordExpression::Note.new(3)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts Dflat, then returns true' do
      note = ChordExpression::Note.new(4)
      expect(note.black_key?).to be_truthy
    end

    it 'accepts D, then returns false' do
      note = ChordExpression::Note.new(5)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts Eflat, then returns true' do
      note = ChordExpression::Note.new(6)
      expect(note.black_key?).to be_truthy
    end

    it 'accepts E, then returns false' do
      note = ChordExpression::Note.new(7)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts F, then returns false' do
      note = ChordExpression::Note.new(8)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts Gflat, then returns true' do
      note = ChordExpression::Note.new(9)
      expect(note.black_key?).to be_truthy
    end

    it 'accepts G, then returns false' do
      note = ChordExpression::Note.new(10)
      expect(note.black_key?).to be_falsey
    end

    it 'accepts Aflat, then returns true' do
      note = ChordExpression::Note.new(11)
      expect(note.black_key?).to be_truthy
    end
  end

  describe '#white_key?' do
    it 'accepts A, then returns true' do
      note = ChordExpression::Note.new(0)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts Bflat, then returns false' do
      note = ChordExpression::Note.new(1)
      expect(note.white_key?).to be_falsey
    end

    it 'accepts B, then returns true' do
      note = ChordExpression::Note.new(2)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts C, then returns true' do
      note = ChordExpression::Note.new(3)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts Dflat, then returns false' do
      note = ChordExpression::Note.new(4)
      expect(note.white_key?).to be_falsey
    end

    it 'accepts D, then returns true' do
      note = ChordExpression::Note.new(5)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts Eflat, then returns false' do
      note = ChordExpression::Note.new(6)
      expect(note.white_key?).to be_falsey
    end

    it 'accepts E, then returns true' do
      note = ChordExpression::Note.new(7)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts F, then returns true' do
      note = ChordExpression::Note.new(8)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts Gflat, then returns false' do
      note = ChordExpression::Note.new(9)
      expect(note.white_key?).to be_falsey
    end

    it 'accepts G, then returns true' do
      note = ChordExpression::Note.new(10)
      expect(note.white_key?).to be_truthy
    end

    it 'accepts Aflat, then returns false' do
      note = ChordExpression::Note.new(11)
      expect(note.white_key?).to be_falsey
    end
  end

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

  describe '#note_names' do
    it 'accepts A' do
      note = ChordExpression::Note.new(0)
      expect(note.note_names).to eq(['A'])
    end

    it 'accepts Bflat' do
      note = ChordExpression::Note.new(1)
      expect(note.note_names).to eq(['Asharp','Bflat'])
    end
  end

  describe '#minor_third' do
    it 'returns Bflat' do
      note = ChordExpression::Note.new(10)
      expect(note.minor_third.value).to be(1)
    end
  end

  describe '#major_third' do
    it 'returns B' do
      note = ChordExpression::Note.new(10)
      expect(note.major_third.value).to be(2)
    end
  end

  describe '#perfect_fifth' do
    it 'returns G' do
      note = ChordExpression::Note.new(10)
      expect(note.perfect_fifth.value).to be(5)
    end
  end

  describe '#diminished_seventh' do
    it 'returns F' do
      note = ChordExpression::Note.new(10)
      expect(note.diminished_seventh.value).to be(7)
    end
  end

  describe '#minor_seventh' do
    it 'returns F' do
      note = ChordExpression::Note.new(10)
      expect(note.minor_seventh.value).to be(8)
    end
  end

  describe '#major_seventh' do
    it 'returns Fsharp' do
      note = ChordExpression::Note.new(10)
      expect(note.major_seventh.value).to be(9)
    end
  end
end
