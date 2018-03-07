class DocsController < ApplicationController

  def index
    @docs = Doc.all
  end

  def show
    @doc = Doc.find(params[:id])
  end

  def new
    @doc = Doc.new
  end

  def edit
    @doc = Doc.find(params[:id])
  end

  def create
    @doc = Doc.new(doc_params)

    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end

  def update
    @doc = Doc.find(params[:id])

    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy

    redirect_to docs_path
  end

    private
    def doc_params
      params.require(:doc).permit(:title, :text)
    end
end
