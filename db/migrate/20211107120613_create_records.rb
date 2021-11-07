class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :user_id, null: false #会員id
      t.integer :hotel_id, null: false #ホテルid
      t.integer :stay, null: false, default: "0" #宿泊状態,enum
      t.date :stay_date #宿泊年月日
      t.string :parson #同行者
      t.string :purpose #目的
      t.string :image_id #画像id
      t.text :remark #備考
      t.datetime :created_at, default: "now" # 登録日時
      t.datetime :updated_at, default: "now" # 更新日時

      t.timestamps
    end
  end
end
