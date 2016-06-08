# This migration comes from ournaropa_decisions (originally 20160607210234)
class CreateOurnaropaDecisionsFeedbacks < ActiveRecord::Migration
  def change
    create_table :ournaropa_decisions_feedbacks do |t|
      t.text :content
      t.string :email
      t.boolean :wants_to_stay_informed

      t.timestamps null: false
    end
  end
end
