class Image < ActiveRecord::Base
  acts_as_fleximage :image_directory => "uploaded/images" do
     preprocess_image do |image|
       image.resize '200x200'
     end
  end

   has_many :illustrations, :dependent => :destroy
   accepts_nested_attributes_for :illustrations
end
