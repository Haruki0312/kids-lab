FactoryBot.define do
  factory :work do
    title {'テストタイトル'}
    material {'テストテスト材料'}
    theme_id {2}
    product_day_id {2}
    grade_id {2}
    explanation {'テストテストテスト説明'}
    association :user

    after(:build) do |work|
      work.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
