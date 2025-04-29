class CreateEmbeddings < ActiveRecord::Migration[7.1]
  def change
    create_table :embeddings do |t|
      t.jsonb :vector
      t.references :text_chunk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
