class Mycourse < ActiveRecord::Base
    belongs_to :course
    belongs_to :user
    
    has_many :studieds
    has_many :subjects, through: :studieds
  
  
end
class Mycourse < ActiveRecord::Base
    belongs_to :course
    belongs_to :user
    
    has_many :studieds
    has_many :subjects, through: :studieds
  
  
end
