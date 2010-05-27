module Remby
  module Acts
    module Illustrated
      def self.included(base)
        base.extend(ActMethods)
      end

      module ActMethods
        def acts_as_illustrated
          has_many :illustrations, :as => :illustrated, :dependent => :destroy
          has_many :images, :through => :illustrations
          accepts_nested_attributes_for :images, :allow_destroy => true
        end
      end
    end
  end
end
