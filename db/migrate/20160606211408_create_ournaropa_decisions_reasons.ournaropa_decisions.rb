# This migration comes from ournaropa_decisions (originally 20160605085752)
class CreateOurnaropaDecisionsReasons < ActiveRecord::Migration
  def change
    create_table :ournaropa_decisions_reasons do |t|

      t.timestamps null: false
    end
  end
end
