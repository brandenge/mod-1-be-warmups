require 'rspec'

def format_price(price)
  "$%05.2f" % price.delete('$')
end

RSpec.describe 'format_price, which formats prices in $##.## format' do
  it 'pads 0 to the front of the price' do
    expect(format_price('$2.50')).to eq('$02.50')
  end

  it 'pads 0 to the end of the price' do
    expect(format_price('$2.5')).to eq('$02.50')
  end

  it 'removes $ at the end of the price' do
    expect(format_price('$32.25$')).to eq('$32.25')
  end

  it 'removes $ in the middle of the price' do
    expect(format_price('3$.25')).to eq('$03.25')
    expect(format_price('9.$50')).to eq('$09.50')
  end

  it 'adds $ to the start of the price' do
    expect(format_price('75.98')).to eq('$75.98')
  end

  it 'formats prices $100 and above correctly' do
    expect(format_price('$143.50')).to eq('$143.50')
  end
end
