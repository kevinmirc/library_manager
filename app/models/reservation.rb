class Reservation < ActiveRecord::Base
  belongs_to :item
  belongs_to :owner, class_name: 'User'

  def formatted_due_date
    due_date.strftime("%m/%d/%Y")
  end
end
