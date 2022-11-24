require 'rails_helper'

describe Critica do
  it "A crítica não pode ficar em branco" do
    critica = Critica.new
    expect(critica.save).to eq(false)
  end
end


describe Critica do 
  it "é invalido sem o primeiro nome" do 
   critica = Critica.new(critica: nil) 
   expect(critica.errors[:critica]).to include("can't be blank") 
  end 
 end