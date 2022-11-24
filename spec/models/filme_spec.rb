require 'rails_helper'

RSpec.describe Filme, type: :model do
  context 'before create' do 
    it 'name not blank' do
      filme = Filme.new
      expect(filme.save).to eq(false)
    end
  end
end
