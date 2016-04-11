# This migration comes from ournaropa_planner (originally 20160409213627)
class AddIndexToCode < ActiveRecord::Migration
  def change
    add_index :ournaropa_planner_courses, :code
  end
end
