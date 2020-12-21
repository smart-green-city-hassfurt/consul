class CreateSDGRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :sdg_revisions do |t|
      t.references :relatable, polymorphic: true, index: false
      t.datetime :revised_at

      t.index [:relatable_type, :relatable_id], name: "sdg_revisions_unique", unique: true

      t.timestamps
    end
  end
end
