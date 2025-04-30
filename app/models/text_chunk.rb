class TextChunk < ApplicationRecord
  belongs_to :document

  has_one :embedding
end
