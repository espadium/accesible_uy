class AddPhoneNumberToInstitutions < ActiveRecord::Migration
  def change
    add_column :institutions, :phone_number, :string
  end
end
