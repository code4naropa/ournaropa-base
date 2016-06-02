# This migration comes from ournaropa_forum (originally 20160601125313)
class AddIsDeveloperToOurnaropaForumPermittedUsers < ActiveRecord::Migration
  def change
    add_column :ournaropa_forum_permitted_users, :is_developer, :boolean, default: false, null: false
  end
end
