require 'bundler/capistrano'     #添加之后部署时会调用bundle install， 如果不需要就可以注释掉
#require "capistrano/ext/multistage"     #多stage部署所需
#set :stages, %w(development production)
#set :default_stage, "development"
set :application, "rails-in-action"
set :repository,  "http://github.com/codedogfish/rails-in-action.git"
set :keep_releases, 5          #只保留5个备份
set :deploy_to, "/home/jackyu/#{application}"  #部署到远程机器的路径
set :deploy_subdir, "demo"
set :user, "jackyu"              #登录部署机器的用户名
default_run_options[:pty] = true          #pty: 伪登录设备
#default_run_options[:shell] = false     #Disable sh wrapping
set :use_sudo, false                            #执行的命令中含有sudo， 如果设为false， 用户所有操作都有权限
set :runner, "jackyu"
set :git_username, "codedogfish"
set :scm, :git
# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "server02"                          # Your HTTP server, Apache/etc
role :app, "server02"                          # This may be the same as your `Web` server
role :db,  "server02", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
namespace :deploy do
    task :start do ; end
    task :stop do ; end
    task :restart, :roles => :app, :except => { :no_release => true } do
        run "pid=`lsof -n -i:10000|grep TCP|grep LISTEN|grep IPv4|awk '{printf(\"%d\\n\"),$2}'` && echo $pid > #{deploy_to}/demo/pid"
        run "kill $pid"
        run "cd #{deploy_to}/demo && rails s -p 10000 -d"
    end

    desc "Checkout subdirectory and delete all the other stuff"
    task :checkout_subdir do
        run "mv #{current_release}/#{deploy_subdir}/ /tmp && rm -rf #{current_release}/* && mv /tmp/#{deploy_subdir}/* #{current_release}"
    end
end
puts "register before"
before "deploy:finalize_update" do
    run "mv #{current_release}/#{deploy_subdir}/ /tmp && rm -rf #{current_release}/* && mv /tmp/#{deploy_subdir}/* #{current_release}"
end
