class ContactInformation < ActiveRecord::Base
  belongs_to :contactable, :polymorphic => true, :touch => true
  validates_presence_of :value
  ValueFormats = [
    # [ value format symbol, [ format_for_jquery, error message, validation regex ], localisation required ]
    [ :postal_box, [ :digit, :not_a_number, /\d+/ ], true],
    [ :email, [ :email, :invalid, /.+@.+\..+/ ], nil],
    [ :website, [ :url, :invalid, /https?:\/\/.+/ ], nil],
    [ :phone_number, nil, nil ],
    [ :street_address, nil, true ]
  ].freeze

  named_scope :links, :conditions => { :value_format => 2 }, :order => "updated_at DESC", :limit => 10

  def value_format_sym
    ContactInformation::ValueFormats[value_format][0]
  end

  protected
  def validate
    validate_with = ValueFormats[value_format]
    errors.add(:value, validate_with[1][1]) if validate_with[1] and !(self.value =~ validate_with[1][2])
  end
end
