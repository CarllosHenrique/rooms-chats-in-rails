class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rooms, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :nick, format: { without: /\s/, message: "cannot contain blanks" }
  validates_uniqueness_of :nick
  validates_presence_of :nick
  validates_length_of :nick, in: 5..10


  validates_presence_of :name
  validates_length_of :name, in: 5..30

end
