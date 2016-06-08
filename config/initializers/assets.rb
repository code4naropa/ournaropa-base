# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

#Rails.application.config.assets.precompile += %w( ournaropa_calendar/*)
Rails.application.config.assets.precompile += %w( ournaropa_library/naropa-icon.jpeg )
Rails.application.config.assets.precompile += %w( ournaropa_library/cu-icon.jpeg )
Rails.application.config.assets.precompile += %w( ournaropa_library/bpl-icon.jpeg )

Rails.application.config.assets.precompile += %w( ournaropa_calendar/fb-icon.png )
Rails.application.config.assets.precompile += %w( ournaropa_calendar/twitter-icon.png )
Rails.application.config.assets.precompile += %w( ournaropa_calendar/url-icon.png )
Rails.application.config.assets.precompile += %w( ournaropa_calendar/gcal-icon.png )

Rails.application.config.assets.precompile += %w( ournaropa_forum/* )

Rails.application.config.assets.precompile += %w( ournaropa_decisions/* )
