require 'rails_helper'

describe Critica do
  it "Criticism cannot be left blank" do
    critica = Critica.new
    expect(critica.save).to eq(false)
  end
end


RSpec.describe Critica, type: :model do
  context "Validate attributes before create" do
    it "Create critica with valid attributes" do
      filme = Filme.new(id: 22, titulo: "Sing", ano_lancamento: '2011')
      critica = Critica.new(comentario: "ahh! Muito bom")
      critica.Filme = filme
      expect(critica).to be_valid
    end
  end
end
