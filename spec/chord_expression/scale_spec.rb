# frozen_string_literal: true

RSpec.describe ChordExpression::Scale do
  describe '#i_root_note' do
    it 'returns the i root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.i_root_note.value).to eq(note.value)
    end
  end

  describe '#ii_root_note' do
    it 'returns the ii root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.ii_root_note.value).to eq(note.value + 2)
    end
  end

  describe '#iii_root_note' do
    it 'returns the iii root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.iii_root_note.value).to eq(note.value + 4)
    end
  end

  describe '#iv_root_note' do
    it 'returns the iv root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.iv_root_note.value).to eq(note.value + 5)
    end
  end

  describe '#v_root_note' do
    it 'returns the v root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.v_root_note.value).to eq(note.value + 7)
    end
  end

  describe '#vi_root_note' do
    it 'returns the vi root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.vi_root_note.value).to eq(note.value + 9)
    end
  end

  describe '#vii_root_note' do
    it 'returns the vii root note' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.vii_root_note.value).to eq(note.value + 11)
    end
  end

  describe '#i_seventh_chord' do
    it 'returns the i seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.i_seventh_chord.chord_name_with_sharp).to eq('Amaj7')
    end
  end

  describe '#ii_seventh_chord' do
    it 'returns the ii seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.ii_seventh_chord.chord_name_with_sharp).to eq('Bmin7')
    end
  end

  describe '#iii_seventh_chord' do
    it 'returns the iii seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.iii_seventh_chord.chord_name_with_sharp).to eq('Csharpmin7')
    end
  end

  describe '#iv_seventh_chord' do
    it 'returns the iv seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.iv_seventh_chord.chord_name_with_sharp).to eq('Dmaj7')
    end
  end

  describe '#v_seventh_chord' do
    it 'returns the v seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.v_seventh_chord.chord_name_with_sharp).to eq('E7')
    end
  end

  describe '#vi_seventh_chord' do
    it 'returns the vi seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.vi_seventh_chord.chord_name_with_sharp).to eq('Fsharpmin7')
    end
  end

  describe '#vii_seventh_chord' do
    it 'returns the vii seventh chord' do
      note = ChordExpression::Note.new(0)
      scale_parser = ChordExpression::ScaleParser.new('Amaj')
      scale = ChordExpression::Scale.new(scale_parser, note)
      expect(scale.vii_seventh_chord.chord_name_with_sharp).to eq('Gsharpmin7flat5')
    end
  end
end
