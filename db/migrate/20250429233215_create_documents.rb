class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :file_path
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
