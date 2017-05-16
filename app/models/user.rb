class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # RELACIONAMENTO COM CURSO
  has_many :mycourses
  has_many :courses, through: :mycourses
  
end
