require 'rails_helper'

describe Filme do
  
  it "Movie name cannot be blank" do
    filme = Filme.new
    expect(filme.save).to eq(false)
  end
end




  