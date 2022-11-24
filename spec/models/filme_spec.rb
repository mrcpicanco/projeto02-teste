require 'rails_helper'

describe Filme do
  it "O nome do filme não pode ficar em branco" do
    filme = Filme.new
    expect(filme.save).to eq(false)
  end
end




  