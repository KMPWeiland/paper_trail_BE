class CreateTextChunks < ActiveRecord::Migration[7.1]
  def change
    create_table :text_chunks do |t|
      t.text :content
      t.integer :page_number
      t.integer :chunk_index
      t.references :document, null: false, foreign_key: true

      t.timestamps
    end
  end
end
