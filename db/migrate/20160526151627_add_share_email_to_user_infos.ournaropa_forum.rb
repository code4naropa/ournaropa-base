# This migration comes from ournaropa_forum (originally 20160525124238)
class AddShareEmailToUserInfos < ActiveRecord::Migration
  def change
    add_column :ournaropa_forum_user_infos, :share_email, :boolean, null: false, default: false
  end
end
