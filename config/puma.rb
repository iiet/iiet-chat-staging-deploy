APP_ROOT =  File.expand_path("../..", __FILE__)
APP_ENV ||= ENV['RAILS_ENV'] || 'development'

environment APP_ENV
daemonize true
pidfile File.join(APP_ROOT, 'tmp', 'pids', 'dashboard.pid')
state_path File.join(APP_ROOT, 'tmp', 'pids', 'dashboard.state')

stdout_redirect File.join(APP_ROOT, 'log', 'dash_stdout.log'), File.join(APP_ROOT, 'log', 'dash_stderr.log'), true

if APP_ENV == 'production'
  bind "tcp://0.0.0.0:9900"
  tag 'Puma Dashboard'
else
  bind "tcp://0.0.0.0:9900"
  tag 'Puma Dashboard - development'
end
