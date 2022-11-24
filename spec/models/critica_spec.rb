require 'rails_helper'

RSpec.describe Log, type: :model do
  context 'before create' do 
    it 'comment with id and date' do
      log = Log.new
      expect(Log.find_by :comment.id).to be present
    end
  end
end
