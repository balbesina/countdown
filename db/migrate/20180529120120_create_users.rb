# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type, null: false, limit: 30
      t.string :email, null: false, limit: 100
      t.string :name, limit: 50
      t.binary :password_digest, null: false, limit: 60
      t.string :token, limit: 24
      t.datetime :confirmed_at

      t.timestamps

      t.index :email, unique: true
    end
  end
end
