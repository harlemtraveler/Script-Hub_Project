namespace :import do

  # My table is called "users" and class/model called "User"
  # desc is just a description
  desc "Import users from csv "
  # :environment is important here!
  task users: :environment do
    # intializes an empty array for your table
    users = []
    # the below variable makes a file relative to the root of your app
    users_file = File.join Rails.root, "users.csv"
    CSV.foreach(users_file, headers: true) do |row|
      users << User.new(row.to_h)
    end
    User.import(users)
  end

  # this is a csv import for my second table
  desc "Imports scripts from csv"
  task scripts: :environment do
    scripts = []
    script_file = File.join Rails.root, "scripts.csv"
    CSV.foreach(script_file, headers: true) do |row|
      scripts << Script.new(row.to_h)
    end
    Script.import(scripts)
  end
end
