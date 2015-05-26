rails_env = 'development'
rails_root = File.expand_path( File.dirname(__FILE__) + "/..")

worker_processes 4

preload_app true
listen 3000

stderr_path rails_root + "/log/unicorn.stderr.log"
stdout_path rails_root + "/log/unicorn.stdout.log"

before_fork do |server, worker|
  old_pid = rails_root + '/tmp/pids/unicorn.pid.oldbin'
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end


after_fork do |server, worker|
  ActiveRecord::Base.establish_connection
  child_pid = server.config[:pid].to_s.sub('.pid', ".#{worker.nr}.pid")
  system("echo #{Process.pid} > #{child_pid}")
end
