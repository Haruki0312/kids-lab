require 'rails_helper'

RSpec.describe Work, type: :model do
  before do
    @work = FactoryBot.build(:work)
  end

  describe '作品新規投稿' do
    context '新規投稿できる場合' do
      it 'image、title、material、theme_id、days_id、grade_id、explanationが存在すれば登録できる' do
      expect(@work).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'imageが空では登録できない' do
        @work.image = nil
        @work.valid?
        expect(@work.errors.full_messages).to include("Image can't be blank")
      end
      it 'titleが空では登録できない' do
        @work.title = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Title can't be blank")
      end
      it 'materialが空では登録できない' do
        @work.material = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Material can't be blank")
      end
      it 'theme_idが「1」では登録できない' do
        @work.theme_id = 1
        @work.valid?
        expect(@work.errors.full_messages).to include("Theme can't be blank")
      end
      it 'days_idが「1」では登録できない' do
        @work.days_id = 1
        @work.valid?
        expect(@work.errors.full_messages).to include("Days can't be blank")
      end
      it 'grade_idが「1」では登録できない' do
        @work.grade_id = 1
        @work.valid?
        expect(@work.errors.full_messages).to include("Grade can't be blank")
      end
      it 'explanationが空では登録できない' do
        @work.explanation = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Explanation can't be blank")
      end
    end
  end
end
