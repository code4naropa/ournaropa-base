# This migration comes from ournaropa_planner (originally 20160409213241)
class AddEnrollmentToCourse < ActiveRecord::Migration
  def change
    add_column :ournaropa_planner_courses, :enrollment_current, :int
    add_column :ournaropa_planner_courses, :enrollment_maximum, :int
    add_column :ournaropa_planner_courses, :enrollment_waitlist, :int
  end
end
