class ApiController < ApplicationController
  
  def index
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
      format.json  { render :json => Course.all }
      format.html{}
    end
  end

  def debug
  end
  
  def signup
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "Devemos implementar o cadastro" }
      format.json  { 
        render :json => msg
      }
    end
  end
  
  def signin
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "Devemos implementar o login" }
      format.json  { 
        render :json => msg
      }
    end
  end
  
  def courses
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "Devemos implementar o lista de cursos com filtro" }
      format.json  { 
        render :json => msg
      }
    end
  end
  
  def subjects
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "Devemos implementar o lista de materias com filtro" }
      format.json  { 
        render :json => msg
      }
    end
  end
  
  def comments
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "Devemos implementar o lista de comentarios com filtro" }
      format.json  { 
        render :json => msg
      }
    end
  end
  
  def perfil
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "Devemos implementar o usuario com filtro" }
      format.json  { 
        render :json => msg
      }
    end
  end
  
  def populaDB
      mechanize = Mechanize.new
      page = mechanize.get('https://uspdigital.usp.br/jupiterweb/obterDisciplina?sgldis=ACH5007&verdis=2')
      @textao = bibliografia page
    
  end
  
  def bibliografia page
      biblio = page.search(".txt_arial_8pt_gray")[17].text
      biblio = biblio.gsub("\u0095","")
      biblio = biblio.gsub("\r\n","")
      biblio = biblio.gsub("\u0092","")
      return biblio
  end
  
end
