class PublicController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end
  
  def contact
  end
  
  def course
    @course = current_user.courses[0]
  end

  def faq 
  end
  
  def materias 
    @materias = Subject.all.order('name asc')
  end
  def materia
    @materia = Subject.find(params[:id])
  end
  
  def materia_mensagem
    @materia = Subject.find(params[:id])
  end
  
  def materia_arquivos
    @materia = Subject.find(params[:id])
  end
  
  def professores
  end
  
  def habilitacoes
  end

  def procura_materia
    
    value = params[:value]
    start = params[:start]
    limit = params[:limit]
     
    @materias = Subject.where(["name LIKE ? or code LIKE ?", "%#{value}%", "%#{value}%"]).order('name asc').limit(limit).offset(start)
    template = ""
    for m in @materias
      template += "<a href='#{ materia_path m.id  }'> <div class='row'> <div class='col s4'> <div class='content'> <div class='code'> <div class='COLOR#{ rand(1..7)  }'> <span> #{m.code[0..2] } </span> </div> </div> </div> </div> <div class='col s8'> <div class='content'> <h5>#{m.name}</h5> <span>#{m.code}</span> </div> </div> </div></a>"
    end
    
    render :text => template
  end
  
  
  
  
end
