# frozen_string_literal: true

class ExamplesController < ProtectedController
# class ExamplesController < ProtectedController
  before_action :set_example, only: %i[update destroy]

  # GET /examples
  # GET /examples.json
  def index
    #get example just for current user
    # @examples = current_user.example
    #returns all examples in database
    @examples = Example.all

    render json: @examples
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: current_user.examples.find(params[:id])
  end

  # POST /examples
  # POST /examples.json
  def create
    #Creates a new example with new example params.
    #Ex:
    # @book = author.books.build(book_params)
    @example = current_user.examples.build(example_params)

    if @example.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @example.update(example_params)
      render json: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy

    head :no_content
  end

  def set_example
    @example = current_user.examples.find(params[:id])
  end

  def example_params
    params.require(:example).permit(:text)
  end

  private :set_example, :example_params
end
