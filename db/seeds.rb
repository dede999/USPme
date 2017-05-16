siglas = ["MAC","MAE","MAP","EACH"]
carater = ["Obrigatorio","Livre","Eletiva"]

MAX = 10 # numero de objetos a serem criados ex. criar 100 alunos
USUARIOS = []
MATERIAS = []
CURSOS = [] 
GRADES = []
COMENTARIOS = []

# Materias
    IntroducaoComputacao = Subject.create!  :code => "MAC0110",
                                            :name => "Introdução a computação",
                                            :description => Forgery('lorem_ipsum').text,
                                            :bibliography => Forgery('lorem_ipsum').text,
                                            :credit_class => Forgery('basic').number,
                                            :credit_work => Forgery('basic').number,
                                            :hours => "#{Forgery('basic').number}h",
                                            :activation => Forgery('date').date
    MATERIAS.push(IntroducaoComputacao)
    
    1.upto(MAX) do |i|
      tmp = Subject.create!   :code => "#{siglas[Random.rand(0...siglas.length)]}#{Random.rand(120...600)}",
                        :name => Forgery('lorem_ipsum').title,
                        :description => Forgery('lorem_ipsum').text,
                        :bibliography => Forgery('lorem_ipsum').text,
                        :credit_class => Random.rand(2...8),
                        :credit_work => Random.rand(2...8),
                        :hours => "#{Random.rand(30...60)}h",
                        :activation => Forgery('date').date
        MATERIAS.push(tmp)
    end

# CURSOS
    BCC = Course.create!    :name => "Bacharelado em ciência da computação", 
                            :short_name => "BCC",
                            :code => "41525",
                            :site => "http://bcc.ime.usp.br", 
                            :duration => 8
    CURSOS.push(BCC)

    1.upto(MAX) do |i|
      tmp = Course.create!  :name => Forgery('lorem_ipsum').title, 
                        :short_name => Forgery('lorem_ipsum').title,
                        :code => Random.rand(200...600),
                        :site => Forgery('internet').domain_name, 
                        :duration => Random.rand(4...8)
      
      CURSOS.push(tmp)
    end
    
# GRADE
   
    Grade.create! :code => Random.rand(12...10000), :course_id => BCC.id
    Grade.create! :code => Random.rand(12...10000), :course_id => BCC.id
    
    1.upto(MAX) do |i|
        tmp = Grade.create! :code => Random.rand(12...10000), :course_id => CURSOS[Random.rand(0...CURSOS.length)].id
        
        0.upto(Random.rand(1...100)) do |j|
            GradeSubject.create!    :grade_id => tmp.id, 
                                    :subject_id => MATERIAS[Random.rand(0...MATERIAS.length)].id,
                                    :semester => Random.rand(1...8),
                                    :mode => carater[Random.rand(0...carater.length)]
        end
        
        GRADES.push(tmp)
    end

# USUARIOS
    Claudio = User.create!  :name => "Claudio Silva",
                            :nusp =>"7158472", 
                            :birth =>  DateTime.parse("14/08/1989"), 
                            :email => 'ddk.claudio@gmail.com', 
                            :password => '1234567890', 
                            :password_confirmation => '1234567890'
                            
    # Criando relacionamento para claudio
    Mycourse.create! :user_id => Claudio.id, :course_id => BCC.id
    
    # Criando vaiors usuarios    
    USUARIOS.push(Claudio)
    1.upto(MAX) do |i|
       tmp = User.create!   :name => Forgery('name').full_name,
                            :nusp => Random.rand(1000000...9000000), 
                            :birth => Forgery('date').date, 
                            :email => Forgery('email').address, 
                            :password => '1234567890', 
                            :password_confirmation => '1234567890'
                        
        0.upto(Random.rand(0...3)) do |j|
            meu_curso = Mycourse.create! :user_id => tmp.id, :course_id => CURSOS[Random.rand(0...CURSOS.length)].id
            0.upto(Random.rand(0...100)) do |k|
                Studied.create! :mycourse_id => meu_curso.id, 
                                :subject_id => tmp.id,
                                :semester => Random.rand(1...8),
                                :mode => carater[Random.rand(0...carater.length)]
            end
        end
         
         
        USUARIOS.push(tmp)
    end
    
# COMENTARIOS


puts(USUARIOS.length)
puts(MATERIAS.length)
puts(CURSOS.length)
puts(GRADES.length)
puts(COMENTARIOS.length)