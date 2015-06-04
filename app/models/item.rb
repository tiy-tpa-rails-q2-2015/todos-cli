class Item < ActiveRecord::Base
  belongs_to :list

  def complete!
    update_attribute :is_complete, true
  end

end