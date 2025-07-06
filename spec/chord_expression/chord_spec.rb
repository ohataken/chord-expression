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

  describe '#major_third?' do
    it 'returns true for major third' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.major_third?).to be(true)
    end
  end

  describe '#third' do
    it 'returns the third of the chord' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.third.value).to be(7)
    end
  end

  describe '#fifth' do
    it 'returns the fifth of the chord' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(10)
    end
  end

  describe '#seventh' do
    it 'returns the seventh of the chord' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(2)
    end
  end
end
