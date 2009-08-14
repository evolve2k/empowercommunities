class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.text :given_names
      t.text :surname
      t.text :preffered_name
      t.date :birth_date
      t.text :email
      t.text :skype_name
      t.text :mobile
      t.text :home_phone
      t.text :work_phone
      t.text :business_name
      t.text :processed_by
      t.text :entered_by
      t.text :region
      t.boolean :paid?
      t.text :payment_method
      t.text :payment_notes
      t.text :personal_skills

      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
