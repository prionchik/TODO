# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#seed_file = Rails.root.join('db', 'seeds.yml')
#config = YAML::load_file(seed_file)
#print(config)
#Project.create!(config)
# db/seeds.rb
require 'yaml'
# Парсим данные из yml файла
data = YAML.load_file('db/seeds.yml')
# Получаем массив проектов (получается массив хешей)
#print(data['projects'])
projects = data['projects']
#print(projects)
#print('hi')
# Для каждого проекта из массива:
projects.each do |project|
  # Создаем новый проект в БД
  puts project['title']
  created_project = Project.create(title: project['title'])
  # Создаем для нового проекта todos
  #created_project.todos.create(project['todos'])
  puts created_project
  project['todos'].each do |w|
    created_project.dos.create(text: w['text'],isCompleted: w['isCompleted'])
  end
end
