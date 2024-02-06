class Note < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title,
    :against => :title,
    using: { tsearch: { prefix: true } }

  # 🚅 add concerns above.

  # 🚅 add attribute accessors above.

  belongs_to :team
  belongs_to :creator, class_name: "Membership"
  # 🚅 add belongs_to associations above.

  # 🚅 add has_many associations above.

  has_rich_text :body
  # 🚅 add has_one associations above.

  # 🚅 add scopes above.

  validates :creator, scope: true
  # 🚅 add validations above.

  # 🚅 add callbacks above.

  # 🚅 add delegations above.

  def valid_creators
    team.users
  end

  # 🚅 add methods above.
end
