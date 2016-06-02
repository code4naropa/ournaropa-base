# This migration comes from ournaropa_forum (originally 20160601111400)
class AddIsDeveloperToOurnaropaForumUsers < ActiveRecord::Migration
  def change
    add_column :ournaropa_forum_users, :is_developer, :boolean, default: false, null: false
  end
end
