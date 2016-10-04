class AddStepnumToInstructions < ActiveRecord::Migration
  def change
    add_column :instructions, :stepnum, :integer
  end
end
