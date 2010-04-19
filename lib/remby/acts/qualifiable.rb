module Remby
  module Acts
    module Qualifiable
      def self.included(base)
        base.extend(ActMethods)
      end

      module ActMethods
        def acts_as_qualifiable
          has_many :education_infos, :as => :qualifiable, :dependent => :destroy
          accepts_nested_attributes_for :education_infos, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_many :experiences, :as => :qualifiable, :dependent => :destroy
          accepts_nested_attributes_for :experiences, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_many :languages, :as => :qualifiable, :dependent => :destroy
          accepts_nested_attributes_for :languages, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_many :skills, :as => :qualifiable, :dependent => :destroy
          accepts_nested_attributes_for :skills, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
        end
      end

      module InstanceMethods
      end
    end
  end
end
