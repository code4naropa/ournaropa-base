class ClearOurnaropaForum < ActiveRecord::Migration
  def up
    drop_table "ournaropa_forum_conversations"
    drop_table "ournaropa_forum_replies"
  end
  
  def down
    create_table "ournaropa_forum_conversations"
    create_table "ournaropa_forum_replies"
  end
end
