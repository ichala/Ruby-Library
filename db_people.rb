require 'json'

module PeoplePersistence
  def store_people(people)
    teachers_data = []
    students_data = []
    teachers_file = './database/teachers.json'
    students_file = './database/students.json'
    if !(File.exist?(teachers_file) && File.read(teachers_file) != '')
      File.write(teachers_file, '[]')
    end
    if !(File.exist?(students_file) && File.read(students_file) != '')
      File.write(students_file, '[]')
    end
    return unless File.exist?(teachers_file) && File.exist?(students_file)

    people.each do |person|
      case person
      when Teacher
        teachers_data << { id: person.id, age: person.age, specialization: person.specialization, name: person.name }
      when Student
        students_data << { id: person.id, age: person.age, classroom: person.classroom.label, name: person.name,
                           parent_permission: person.parent_permission }
      end
    end
    File.write(teachers_file, JSON.generate(teachers_data))
    File.write(students_file, JSON.generate(students_data))
  end

  def load_people
    data = []
    teachers_file = './database/teachers.json'
    students_file = './database/students.json'
    if !(File.exist?(teachers_file) && File.read(teachers_file) != '')
      File.write(teachers_file, '[]')
    end
    if !(File.exist?(students_file) && File.read(students_file) != '')
      File.write(students_file, '[]')
    end
    unless File.exist?(teachers_file) && File.exist?(students_file) &&
           File.read(teachers_file) != '' && File.read(students_file) != ''
      return data
    end

    JSON.parse(File.read(teachers_file)).each do |teacher|
      data << Teacher.new(teacher['id'], teacher['age'], teacher['specialization'], teacher['name'])
    end

    JSON.parse(File.read(students_file)).each do |student|
      data << Student.new(student['id'], student['age'], student['classroom'], student['name'],
                          parent_permission: student['parent_permission'])
    end

    data
  end
end
