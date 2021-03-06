require 'rails_helper'

RSpec.describe Achievement, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title).scoped_to(:user_id).with_message("you can't have two achievements with the same title") }
    it { should validate_presence_of(:user) }
    # it { should belongs_to(:user) }
  end

  it 'has silly title' do
    achievement = Achievement.new(title: 'New Achievement', user: FactoryGirl.create(:user, email: 'test@gmail.com'))
    expect(achievement.silly_title).to eq('New Achievement by test@gmail.com')
  end
end
