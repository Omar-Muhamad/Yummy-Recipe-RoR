class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
    has_many :recipes
    has_many :foods

    validates :name, presence: true

    def admin?
      role == 'admin' ? true : false
    end
end
