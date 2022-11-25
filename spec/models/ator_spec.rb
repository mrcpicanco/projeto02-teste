require 'rails_helper'

describe Ator do 
  it "is valid when name, year and email are present" do 
   ator = Ator.new( nome: 'Bruce', 
    ano_nascimento: '2000', 
    email: 'bruce@ironmaiden.com' ) 
    expect(ator).to be_valid 
   end 
 end

 describe Ator do
  it "Name cannot be blank" do
    ator = Ator.new
    expect(ator.save).to eq(false)
  end
end

describe Ator do 
  it "is invalid if the same email already exists" do 
   ator = Ator.create( nome: 'Steve', 
    ano_nascimento: '2001', email: 'contato@ironmaiden.com' ) 
   ator = Ator.new( nome: 'Bruce', 
    ano_nascimento: '2003', email: 'contato@ironmaiden.com' ) 
   ator.valid? 
   expect(ator.errors[:email]).to include('has already been taken')
  end 
 end