Base.setup_mapper :default do
  collection :posts do
    entity Post

    attribute :id, Integer
    attribute :title, String
    attribute :text, String
    attribute :created_at, DateTime
    attribute :updated_at, DateTime
  end
end
