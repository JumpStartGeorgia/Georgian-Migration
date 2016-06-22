# Represents a region of Georgia
class Region
  include Neo4j::ActiveNode

  property :name, type: String

  validates :name, presence: true

  property :created_at
  property :updated_at
end
