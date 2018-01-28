class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.string :number
      t.string :message

      t.timestamps null: false
    end
  end
end
