require './lib/caesar_cipher.rb'

describe "#caesar_cipher" do
  it 'handles every letter of the alphabet' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 3)).to eql('defghijklmnopqrstuvwxyzabc')
  end

  it 'handles every uppercase letter of the alphabet' do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz'.upcase, 3)).to eql('DEFGHIJKLMNOPQRSTUVWXYZABC')
  end

  it 'handles loops around the alphabet' do
    expect(caesar_cipher('xyz', 3)).to eql('abc')
  end

  it 'handles multiple words' do
    expect(caesar_cipher('xyz xyz xyz', 3)).to eql('abc abc abc')
  end

  it 'preserves punctuation' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'works with a single char' do
    expect(caesar_cipher('A', 5)).to eql('F')
  end

  it 'works with negative shift' do
    expect(caesar_cipher('a', -3)).to eql('x')
  end

  it 'works with large shift' do
    expect(caesar_cipher('Hello, World!', 75)).to eql('Ebiil, Tloia!')
  end

  it 'works with large negative shift factors' do
    expect(caesar_cipher('Hello, World!', -29)).to eql('Ebiil, Tloia!')
  end
end