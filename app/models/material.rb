class Material < ActiveRecord::Base
    belongs_to :comments, :activities
end
