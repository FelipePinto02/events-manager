class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable

  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :event_attendances, foreign_key: :attendee_id # join table
  has_many :attended_events, through: :event_attendances, source: :attended_event

  validates :username, :password, :password_confirmation, presence: true
  validates :password, confirmation: true, length: { minimum: 6 }

  scope :accepted, -> { where('status = 1') }
  scope :invited, -> { where('status = 0') }

  protected

  def email_required?
    false
  end
end
