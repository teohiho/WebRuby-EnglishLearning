class CreateVocabularies < ActiveRecord::Migration[5.1]
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :mean1
      t.string :mean2
      t.string :mean3
      t.string :mean4
      t.string :mean
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
