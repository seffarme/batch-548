require_relative "french_ssn_info"

describe '#french_ssn_info' do
  it "returns 'a man, born in December, 1984 in Seine-Maritime.' when passed '1 84 12 76 451 089 46'" do
    result = french_ssn_info('1 84 12 76 451 089 46')
    expect(result).to eq('a man, born in December, 1984 in Seine-Maritime.')
  end

  it "returns 'The number is invalid' when passed an empty string" do
    result = french_ssn_info('')
    expect(result).to eq('The number is invalid')
  end
end
