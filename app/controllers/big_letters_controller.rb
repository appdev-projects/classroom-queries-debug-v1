class BigLettersController < ApplicationController
  def index
    @list_of_big_letters = BigLetter.all.order({ :created_at => :desc })

    render({ :template => "big_letters/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    @the_big_letter = BigLetter.where({ :id => the_id }).at(0)

    render({ :template => "big_letters/show.html.erb" })
  end

  def create
    the_big_letter = BigLetter.new
    the_big_letter.title = params.fetch("query_title")
    the_big_letter.body = params.fetch("query_body")

    if the_big_letter.valid?
      the_big_letter.save
      redirect_to("/big_letters", { :notice => "Big letter created successfully." })
    else
      redirect_to("/big_letters", { :notice => "Big letter failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_big_letter = BigLetter.where({ :id => the_id }).at(0)

    the_big_letter.title = params.fetch("query_title")
    the_big_letter.body = params.fetch("query_body")

    if the_big_letter.valid?
      the_big_letter.save
      redirect_to("/big_letters/#{the_big_letter.id}", { :notice => "Big letter updated successfully."} )
    else
      redirect_to("/big_letters/#{the_big_letter.id}", { :alert => "Big letter failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_big_letter = BigLetter.where({ :id => the_id }).at(0)

    the_big_letter.destroy

    redirect_to("/big_letters", { :notice => "Big letter deleted successfully."} )
  end
end
