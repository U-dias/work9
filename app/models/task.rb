class Task < ApplicationRecord
  validates :title, :start, :end, presence:  { message: "を入力して下さい。" }
  validates :title, length: { maximum: 20, message: "は20字までにして下さい。"}
  validates :description, length: { maximum: 500, message: "は500字までにして下さい。"}
  validates :end, comparison: { greater_than_or_equal_to: :start,message: "が間違っています。" }

end
