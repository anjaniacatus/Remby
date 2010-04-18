module Remby
  module Acts
    module Contactable
      def self.included(base)
        base.extend(ActMethods)
      end

      module ActMethods
        def acts_as_contactable
          has_many :contact_infos, :as => :contactable, :dependent => :destroy
          accepts_nested_attributes_for :contact_infos, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_many :phone_numbers, :as => :contactable, :dependent => :destroy
          accepts_nested_attributes_for :phone_numbers, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_many :emails, :as => :contactable, :dependent => :destroy
          accepts_nested_attributes_for :emails, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_many :urls, :as => :contactable, :dependent => :destroy
          accepts_nested_attributes_for :urls, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_one :street_address, :as => :contactable, :dependent => :destroy
          accepts_nested_attributes_for :street_address, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          has_one :postal_box, :as => :contactable, :dependent => :destroy
          accepts_nested_attributes_for :postal_box, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
          #unless included_modules.include? InstanceMethods
          #include InstanceMethods
          #end
        end
      end

      module InstanceMethods
        def qualifiable?
          true
        end

        def touch_qualifications
          self.qualifications.each do |q|
            q.published = (self.respond_to?(:published) ? self.published : false)
            q.save
          end
        end
      end
    end
  end
end
