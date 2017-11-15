class ChaptersController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @chapter = @story.chapters.new
  end

  def index
    @story = Story.find(params[:id])
    @chapters = @story.chapters
  end

  def show
    @chapter = Chapter.find(params[:id])
    @lessons = @chapter.lessons
  end

  def create
    @story = Story.find(params[:story_id])
    @chapter = @story.chapters.new(chapter_params)
    if @chapter.save
      redirect_to story_path(@chapter.story)
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:story_id])
    @chapter = Chapter.find(params[:id])
    render :edit
  end

  def update
    @chapter = Chapter.find(params[:id])
    @story = @chapter.story
    if @chapter.update(chapter_params)
      redirect_to story_path(@story)
    else
      render 'chapters/edit'
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to story_path(@story)
  end

  private
    def chapter_params
      params.require(:chapter).permit(:sentence, :author, :pic, :story_id)
    end
end
