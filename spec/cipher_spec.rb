require './lib/cipher'

describe '#caesar_cipher' do
  it 'returns empty string if no input' do
    expect(caesar_cipher('', 1)).to eql ''
  end

  it 'returns same string if shift value == 0' do
    expect(caesar_cipher('abc', 0)).to eql 'abc'
  end

  it 'loops to beginning of alphabet if shifted past "z"' do
    expect(caesar_cipher('xyz', 3)).to eql 'abc'
  end

  it 'shifts upper and lowercase letters' do
    expect(caesar_cipher('XYZxyz', 3)).to eql 'ABCabc'
  end

  it 'doesn\'t shift numbers, spaces, or punctuation' do
    expect(caesar_cipher('abc 123 !@#', 1)).to eql 'bcd 123 !@#'
  end
end