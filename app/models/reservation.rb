class Reservation < ApplicationRecord
  belongs_to :parking_space

  validate :is_end_date_correct
  validate :is_start_date_correct
  validate :are_dates_correct
  validates :name, presence: true, length: { minimum: 5 }
  validates :pesel, presence: true, length: { is: 11 }, numericality: { only_integer: true }
  validates :license_plate, presence: true, length: { minimum: 7, maximum: 9 }

  def is_end_date_correct
    if end_date.nil?
      errors.add(:end_date, "'end_date' can't be nil")
    elsif end_date < Date.today
      errors.add(:end_date, "'end_date' can't be earlier than today")
    elsif start_date.present? && end_date < start_date
      errors.add(:end_date, "'end_date' can't be earlier than 'start_date'")
    end
  end

  def is_start_date_correct
    if start_date.nil?
      errors.add(:start_date, "'start_date' can't be nil")
    elsif start_date < Date.today
      errors.add(:start_date, "'start_date' can't be earlier than today")
    end
  end

  def are_dates_correct
    reservations = Reservation.where(parking_space_id: parking_space_id)
    reservations.each do |reservation|
      if id.present? && reservation.id == id
        next
      elsif start_date.present? && start_date.between?(reservation.start_date, reservation.end_date)
        errors.add(:start_date, "You can't make this reservation because there is reservation in these days #{reservation.start_date} - #{reservation.end_date}")
        break
      end

      if end_date.present? && end_date.between?(reservation.start_date, reservation.end_date)
        errors.add(:end_date, "You can't make this reservation because there is reservation in these days #{reservation.start_date} - #{reservation.end_date}")
        break
      end
    end
  end
end
