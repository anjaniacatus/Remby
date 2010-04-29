class Society < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  has_many :notes
  has_many :offerings
  has_many :jobs
  has_many :contact_informations, :as => :contactable, :dependent => :destroy
  accepts_nested_attributes_for :contact_informations, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }
  named_scope :ordered, :order => "name ASC"

  Categories = { "S.A" => 1, "S.A.R.L" => 2, "S.A.R.L.U." => 3, "S.U." => 4, "Autres" => 5 }
  Sectors = { "Primaire" => 1, "Secondaire" => 2, "Tertiaire" => 3}

  named_scope :by_category, lambda  { |*args| { :conditions => %{category = #{Categories[args.first]}} }}
  named_scope :by_sector, lambda  { |*args| { :conditions => %{sector = #{Sectors[args.first]}} }}
end