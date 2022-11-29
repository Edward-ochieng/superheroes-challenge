class HeroPower < ApplicationRecord
    validates :strength, inclusion: {in: %w(Strong, Weak, Average)} 
end
