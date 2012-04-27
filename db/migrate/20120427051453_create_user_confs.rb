class CreateUserConfs < ActiveRecord::Migration
  def change
    create_table :user_confs do |t|
      t.string :name
      t.string :code
      t.string :email

      t.timestamps
    end
  end
end
