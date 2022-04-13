require_relative 'tests_helper'

describe Corrector do
  before :each do
    nameable = double('nameable')
    allow(nameable).to receive(:correct_name){'name'}
    @corrector = Corrector.new nameable
  end

  it 'should capitalize word' do
    actual_name = @corrector.correct_name
    expect(actual_name).to eq 'NAME'
  end
end
