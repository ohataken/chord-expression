# frozen_string_literal: true

RSpec.describe ChordExpression::Chord do
  describe '#triad?' do
    it 'returns true for major triad' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.triad?).to be(true)
    end
  end

  describe '#seventh?' do
    it 'returns true for major seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end
  end

  describe '#minor_third?' do
    it 'returns true for minor third' do
      chord_parser = ChordExpression::ChordParser.new('Cmin')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end
  end
end
