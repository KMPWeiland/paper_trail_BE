class Document < ApplicationRecord
  belongs_to :user
  has_many :text_chunks
end
