# frozen_string_literal: true

RSpec.describe ChordExpression::Scale do
  describe '#i_root_note' do
    it 'returns the i root note' do
      note = ChordExpression::Note.new(0)
      scale = ChordExpression::Scale.new(note)
      expect(scale.i_root_note.value).to eq(note.value)
    end
  end

  describe '#ii_root_note' do
    it 'returns the ii root note' do
      note = ChordExpression::Note.new(0)
      scale = ChordExpression::Scale.new(note)
      expect(scale.ii_root_note.value).to eq(note.value + 2)
    end
  end

  describe '#iii_root_note' do
    it 'returns the iii root note' do
      note = ChordExpression::Note.new(0)
      scale = ChordExpression::Scale.new(note)
      expect(scale.iii_root_note.value).to eq(note.value + 4)
    end
  end
end
