# frozen_string_literal: true

RSpec.describe ChordExpression::ChordParser do
  describe '#parse' do
    it 'returns a chord' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.parse).to be_a(ChordExpression::Chord)
      expect(chord_parser.parse.root_note.value).to be(0)
    end
  end

  describe '#minor_major_seventh?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end

    it 'returns true if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.minor_major_seventh?).to be_truthy
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.minor_major_seventh?).to be_falsey
    end
  end

  describe '#minor_seventh_flat_five?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns true if the chord is Fmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7flat5')
      expect(chord_parser.minor_seventh_flat_five?).to be_truthy
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.minor_seventh_flat_five?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.minor_seventh_flat_five?).to be_truthy
    end
    end
  end

  describe '#minor_seventh?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns true if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.minor_seventh?).to be_truthy
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.minor_seventh?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.minor_seventh?).to be_falsey
    end
  end

  describe '#major_seventh?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns true if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.major_seventh?).to be_truthy
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.major_seventh?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.major_seventh?).to be_falsey
    end
  end

  describe '#dominant_seventh?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns true if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.dominant_seventh?).to be_truthy
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.dominant_seventh?).to be_falsey
    end
  end

  describe '#diminished_seventh?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns true if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.diminished_seventh?).to be_truthy
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.diminished_seventh?).to be_falsey
    end
  end

  describe '#major_triad?' do
    it 'returns true if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.major_triad?).to be_truthy
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.major_triad?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.major_triad?).to be_falsey
    end
  end

  describe '#minor_triad?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns true if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.minor_triad?).to be_truthy
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.minor_triad?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.minor_triad?).to be_falsey
    end
  end

  describe '#augmented_triad?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns true if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.augmented_triad?).to be_truthy
    end

    it 'returns false if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.augmented_triad?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.augmented_triad?).to be_falsey
    end
  end

  describe '#diminished_triad?' do
    it 'returns false if the chord is A' do
      chord_parser = ChordExpression::ChordParser.new('A')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns false if the chord is Bmin' do
      chord_parser = ChordExpression::ChordParser.new('Bmin')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns false if the chord is Caug' do
      chord_parser = ChordExpression::ChordParser.new('Caug')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns true if the chord is Ddim' do
      chord_parser = ChordExpression::ChordParser.new('Ddim')
      expect(chord_parser.diminished_triad?).to be_truthy
    end

    it 'returns false if the chord is Emaj7' do
      chord_parser = ChordExpression::ChordParser.new('Emaj7')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns false if the chord is Fmin7' do
      chord_parser = ChordExpression::ChordParser.new('Fmin7')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns false if the chord is G7' do
      chord_parser = ChordExpression::ChordParser.new('G7')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns false if the chord is Adim7' do
      chord_parser = ChordExpression::ChordParser.new('Adim7')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns false if the chord is Bmmaj7' do
      chord_parser = ChordExpression::ChordParser.new('Bmmaj7')
      expect(chord_parser.diminished_triad?).to be_falsey
    end

    it 'returns true if the chord is Cmin7flat5' do
      chord_parser = ChordExpression::ChordParser.new('Cmin7flat5')
      expect(chord_parser.diminished_triad?).to be_falsey
    end
  end
end
