class Job < ActiveRecord::Base
  has_friendly_id :ref, :use_slug => true, :strip_diacritics => true
  belongs_to :society
  belongs_to :function
  belongs_to :localisation
  belongs_to :contract


  def my_function=(my) # "[function]"
    if my and !my.blank?
      function_name = my.scan(/(\[([^\]]*)\])/)[0]
      self.function = Function.find_or_create_by_name(my.titleize)
    end
  end

  def my_function
    unless function.blank?
      "#{function.name}" unless new_record?
    end
  end

  def my_localisation=(my) # "[localisation]"
    if my and !my.blank?
      localisation_name = my.scan(/(\[([^\]]*)\])/)[0]
      self.localisation = Localisation.find_or_create_by_name(my.titleize)
    end
  end

  def my_localisation
    unless localisation.blank?
      "#{localisation.name}" unless new_record?
    end
  end

  def my_contract=(my) # "[contract]"
    if my and !my.blank?
      contract_name = my.scan(/(\[([^\]]*)\])/)[0]
      self.contract = Contract.find_or_create_by_name(my.titleize)
    else
    end
  end

  def my_contract
    unless contract.blank?
      "#{contract.name}" unless new_record?    
    end
  end
end
