class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :votes
  has_many :comments, through: :votes
  
  # RELACIONAMENTO COM CURSO
  has_many :mycourses
  has_many :courses, through: :mycourses
  
end
