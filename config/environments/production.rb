Tracks::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  config.middleware.use 'Rack::Bug',
    :secret_key => '7370ca22d6be47dd8392a54db32a64a9d2cfb030e698e50252a7682da89de2e5aa80488f6bf73d3d8b1cf7939468774382739c56c3d687d326780bdbe53c899f',
    :panel_classes => [
       Rack::Bug::RailsInfoPanel,
       Rack::Bug::TimerPanel,
       Rack::Bug::RequestVariablesPanel,
       Rack::Bug::ActiveRecordPanel,
       Rack::Bug::TemplatesPanel,
       Rack::Bug::LogPanel,
       Rack::Bug::SQLPanel,    # -- adds ~10 sec to load time
       # Rack::Bug::CachePanel,  # -- adds ~10 sec to load time
       Rack::Bug::MemoryPanel
     ]



  # For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  # If you have no front-end server that supports something like X-Sendfile,
  # just comment this out and Rails will serve the files

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = false

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
end
