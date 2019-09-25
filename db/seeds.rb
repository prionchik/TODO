data = HashWithIndifferentAccess.new(YAML::load_file(File.join(Rails.root, 'db', 'seeds.yml')))

data[:projects].each do |project|
        p = Project.new(title: project[:title])
        puts project[:todos]
        project[:todos].each do |todo|
          p.dos << Do.create(todo)
        end
        p.save!
end
