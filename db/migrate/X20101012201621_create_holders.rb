class CreateHolders < ActiveRecord::Migration
  def self.up
    create_table :holders do |t|
	t.string :name
	t.string :address
	t.string :country
	t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_tel
	t.string :contact_mail
      t.timestamps
    end
  end

  def self.down
    drop_table :holders
  end
end
