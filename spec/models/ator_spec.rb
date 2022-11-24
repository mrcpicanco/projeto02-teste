require 'rails_helper'

RSpec.describe Ator, type: :model do
  context 'before create' do 
    it 'name not blank' do
      ator = Ator.new
      expect(ator.save).to eq(false)
    end
  end
end
