# frozen_string_literal: true

class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :title, limit: 100, null: false
      t.timestamp :at, null: false
      t.text :description, limit: 64.kilobytes
      t.timestamps
    end
  end
end
