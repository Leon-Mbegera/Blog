module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    where(status: 'public').count
  end

  def archived?
    status == 'archived'
  end
end