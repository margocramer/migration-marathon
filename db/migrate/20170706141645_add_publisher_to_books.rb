class AddPublisherToBooks < ActiveRecord::Migration
  def up
    add_column :books, :publisher, :string
  end

  def down
    remove_column :books, :publisher
  end
end
