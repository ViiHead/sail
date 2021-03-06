# frozen_string_literal: true

describe Sail::Configuration, type: :lib do
  describe '#initialize' do
    subject { described_class.new }

    it 'assigns the proper default values to configs' do
      expect(subject.instance_variable_get(:@cache_life_span)).to eq(10.minutes)
      expect(subject.instance_variable_get(:@array_separator)).to eq(';')
      expect(subject.instance_variable_get(:@dashboard_auth_lambda)).to be_nil
      expect(subject.instance_variable_get(:@back_link_path)).to eq('root_path')
    end
  end
end
