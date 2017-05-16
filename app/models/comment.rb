class Comment < ActiveRecord::Base
    has_one :materials
end
