class CreateProviderInfos < ActiveRecord::Migration
  def change
    create_table :provider_infos do |t|
      t.string :pname
      t.string :conPerson
      t.string :conPost
      t.string :conPhoneNum
      t.string :Address
      t.string :Email

      t.timestamps null: false
    end
  end
end
