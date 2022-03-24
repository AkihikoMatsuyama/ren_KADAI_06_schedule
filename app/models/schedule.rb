class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :memo, length: { in: 1..50 }

  validate :start_end_check
  def start_end_check
    return if end_day.blank? || start_day.blank?
    errors.add(:end_day, "は開始日以降(開始日と同日はOK)のものを選択してください") if end_day < start_day
  end
end
