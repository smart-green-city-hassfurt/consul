class SDG::Revision < ApplicationRecord
  validates :relatable_id, uniqueness: { scope: [:relatable_type] }
  validates :revised_at, presence: true

  belongs_to :relatable, polymorphic: true, optional: false
end
