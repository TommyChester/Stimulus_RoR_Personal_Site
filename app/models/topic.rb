class Topic < ApplicationRecord
    has_many: posts, dependant: :destroy
end
