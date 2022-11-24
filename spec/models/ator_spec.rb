require 'rails_helper'

describe Ator do
  it "O nome não pode ficar em branco" do
    ator = Ator.new
    expect(ator.save).to eq(false)
  end
end

