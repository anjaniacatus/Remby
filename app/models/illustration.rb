class Illustration < ActiveRecord::Base
  belongs_to :image
  belongs_to :illustrated, :polymorphic => true
end
