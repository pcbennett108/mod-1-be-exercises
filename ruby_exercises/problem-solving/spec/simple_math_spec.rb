require "../lib/simple_math"

RSpec.describe SimpleMath do

  it 'can add two numbers' do
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do

    # instantiate the class
    sm = SimpleMath.new
    #
    # call the method being tested
    result = sm.multiply(5,11)
    # determine your expected result
    expected = 55
    #
    # check results
    expect(result).to eq(expected)
  end


  it 'can multiply two other numbers' do

    # instantiate the clas
    sm = SimpleMath.new
    #
    # call the method being tested
    result = sm.multiply(-7,13)
    # determine your expected result
    expected = -91
    #
    # check results
    expect(result).to eq(expected)
  end

  it 'can divide two numbers' do
    sm = SimpleMath.new
    result = sm.divide(81,9)
    expected = 9
    expect(result).to eq(expected)
  end

  it 'can divide two other numbers' do
    sm = SimpleMath.new
    result = sm.divide(1911,-7)
    expected = -273
    expect(result).to eq(expected)
  end
end
