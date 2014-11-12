require 'spec_helper'
describe 'smarthost' do

  context 'with defaults for all parameters' do
    it { should contain_class('smarthost') }
  end
end
