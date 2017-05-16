class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name # Bacharelado em ciencia da computação
      t.string :short_name # BCC
      t.text :site # link para pagina oficial do curso ex: http://bcc.ime.usp.br
      t.text :description
      t.integer :duration # numero de semestres
      
      t.timestamps null: false
    end
  end
end
