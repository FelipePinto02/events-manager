class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :event_attendances, foreign_key: :attendee_id # join table
  has_many :attended_events, through: :event_attendances, source: :attended_event

  validates :username, :password, presence: true
  validates :password, length: { minimum: 6 }
end
