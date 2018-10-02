class AddStripeUidToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :stripe_uid, :string
  end
end
