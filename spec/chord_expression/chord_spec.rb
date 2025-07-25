# frozen_string_literal: true

RSpec.describe ChordExpression::Chord do
  describe '#triad?' do
    it 'returns true for major triad' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.triad?).to be(true)
    end

    it 'returns true for minor triad flat five' do
      chord_parser = ChordExpression::ChordParser.new('Cminflat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.triad?).to be(true)
    end

    it 'returns true for minor triad' do
      chord_parser = ChordExpression::ChordParser.new('Cmin')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.triad?).to be(true)
    end

    it 'returns true for augmented triad' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.triad?).to be(true)
    end

    it 'returns true for diminished triad' do
      chord_parser = ChordExpression::ChordParser.new('Cdim')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.triad?).to be(true)
    end
  end

  describe '#seventh?' do
    it 'returns true for minor major seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end

    it 'returns true for minor seventh flat five' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end

    it 'returns true for minor seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end

    it 'returns true for major seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end

    it 'returns true for dominant seventh' do
      chord_parser = ChordExpression::ChordParser.new('C7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end

    it 'returns true for diminished seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cdim7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh?).to be(true)
    end
  end

  describe '#minor_third?' do
    it 'returns true for minor major seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end

    it 'returns true for minor seventh flat five' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end

    it 'returns true for minor seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end

    it 'returns true for minor triad flat five' do
      chord_parser = ChordExpression::ChordParser.new('Cminflat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end

    it 'returns true for minor triad' do
      chord_parser = ChordExpression::ChordParser.new('Cmin')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end

    it 'returns true for augmented triad' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end

    it 'returns true for diminished triad' do
      chord_parser = ChordExpression::ChordParser.new('Cdim')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.minor_third?).to be(true)
    end
  end

  describe '#major_third?' do
    it 'returns true for major seventh' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.major_third?).to be(true)
    end

    it 'returns true for dominant seventh' do
      chord_parser = ChordExpression::ChordParser.new('C7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.major_third?).to be(true)
    end

    it 'returns true for major triad' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.major_third?).to be(true)
    end

    it 'returns true for augmented triad' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.major_third?).to be(true)
    end
  end

  describe '#third' do
    it 'returns the third of Cmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.third.value).to be(7)
    end

    it 'returns the third of Cmin7' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.third.value).to be(6)
    end
  end

  describe '#fifth' do
    it 'returns the diminished fifth of Cdim7' do
      chord_parser = ChordExpression::ChordParser.new('Cdim7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(9)
    end

    it 'returns the diminished fifth of Cdim' do
      chord_parser = ChordExpression::ChordParser.new('Cdim')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(9)
    end

    it 'returns the fifth of Cmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(10)
    end

    it 'returns the diminished fifth of Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(9)
    end

    it 'returns the augmented fifth of Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(11)
    end

    it 'returns the diminished fifth of Cminflat5' do
      chord_parser = ChordExpression::ChordParser.new('Cminflat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.fifth.value).to be(9)
    end
  end

  describe '#seventh' do
    it 'returns the seventh of Cmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(2)
    end

    it 'returns the seventh of Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(1)
    end

    it 'returns the seventh of Cmin7' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(1)
    end

    it 'returns the seventh of Cmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(2)
    end

    it 'returns the seventh of Cmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(2)
    end

    it 'returns the seventh of C7' do
      chord_parser = ChordExpression::ChordParser.new('C7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(1)
    end

    it 'returns the seventh of Cdim7' do
      chord_parser = ChordExpression::ChordParser.new('Cdim7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.seventh.value).to be(0)
    end
  end

  describe '#chord_modifier_name' do
    it 'returns the chord modifier name for Cmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('mmaj7')
    end

    it 'returns the chord modifier name for Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('min7flat5')
    end

    it 'returns the chord modifier name for Cmin7' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('min7')
    end

    it 'returns the chord modifier name for Cmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('maj7')
    end

    it 'returns the chord modifier name for C7' do
      chord_parser = ChordExpression::ChordParser.new('C7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('7')
    end

    it 'returns the chord modifier name for Cdim7' do
      chord_parser = ChordExpression::ChordParser.new('Cdim7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('dim7')
    end

    it 'returns the chord modifier name for Cminflat5' do
      chord_parser = ChordExpression::ChordParser.new('Cminflat5')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('minflat5')
    end

    it 'returns the chord modifier name for Cmin' do
      chord_parser = ChordExpression::ChordParser.new('Cmin')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('min')
    end

    it 'returns the chord modifier name for Cmaj' do
      chord_parser = ChordExpression::ChordParser.new('Cmaj')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('maj')
    end

    it 'returns the chord modifier name for Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('aug')
    end

    it 'returns the chord modifier name for Cdim' do
      chord_parser = ChordExpression::ChordParser.new('Cdim')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_modifier_name).to eq('dim')
    end
  end

  describe '#chord_name_with_flat' do
    it 'returns the chord name with flat' do
      chord_parser = ChordExpression::ChordParser.new('Csharpmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_name_with_flat).to eq('Dflatmaj7')
    end
  end

  describe '#chord_name_with_sharp' do
    it 'returns the chord name with sharp' do
      chord_parser = ChordExpression::ChordParser.new('Dflatmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_name_with_sharp).to eq('Csharpmaj7')
    end
  end

  describe '#chord_names' do
    it 'accepts Amaj' do
      chord_parser = ChordExpression::ChordParser.new('Amaj')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_names).to eq(['Amaj'])
    end

    it 'accepts Bflatmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bflatmaj7')
      chord = ChordExpression::Chord.new(chord_parser, chord_parser.parse_root_note)
      expect(chord.chord_names).to eq(['Asharpmaj7', 'Bflatmaj7'])
    end
  end
end
