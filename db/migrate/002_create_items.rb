class CreateItems < ActiveRecord::Migration

  def change
    create_table :items do |t|
      t.string :task
      t.datetime :due_date
      t.boolean :is_complete
      t.references :list

      t.timestamps null: false
    end
  end
end