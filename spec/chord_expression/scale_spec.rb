# frozen_string_literal: true

RSpec.describe ChordExpression::Scale do
  describe '#i_root_note' do
    it 'returns the i root note' do
      note = ChordExpression::Note.new(0)
      scale = ChordExpression::Scale.new(note)
      expect(scale.i_root_note.value).to eq(note.value)
    end
  end
end
