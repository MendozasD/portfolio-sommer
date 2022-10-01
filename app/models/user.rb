class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, :registerable, :recoverable,  :validatable
  devise :database_authenticatable, :rememberable
end
