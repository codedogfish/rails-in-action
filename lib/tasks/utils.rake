namespace :utils do
    desc "Create blank directories if they don't already exist"
    task(:create_directories) do
        # The folders I need to create
        shared_folders = ["icons","images","groups"]
        for folder in shared_folders
            # Check to see if it exists
            if File.exists?("#{RAILS_ROOT}/public/#{folder}")
                puts "#{RAILS_ROOT}/public/#{folder} exists"
            else
                puts "#{RAILS_ROOT}/public/#{folder} doesn't exist so we're creating"
                Dir.mkdir "#{RAILS_ROOT}/public/#{folder}"
            end
        end
    end
    desc "Finds soon to expire subscriptions and emails users"
    task(:send_expire_soon_emails => :environment) do
        # Find users to email
        for user in User.members_soon_to_expire
            puts "Emailing #{user.name}"
            UserNotifier.deliver_expire_soon_notification(user)
        end
    end
end
