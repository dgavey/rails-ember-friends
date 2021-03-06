class Api::V1::EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :update, :destroy]

  # GET /episodes
  def index
    @episodes = Episode.all

    render jsonapi: @episodes
  end

  # GET /episodes/1
  def show
    render jsonapi: @episode
  end

  # POST /episodes
  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      render jsonapi: @episode, status: :created, location: @episode
    else
      render jsonapi: @episode.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /episodes/1
  def update
    if @episode.update(episode_params)
      render jsonapi: @episode
    else
      render jsonapi: @episode.errors, status: :unprocessable_entity
    end
  end

  # DELETE /episodes/1
  def destroy
    @episode.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode
      @episode = Episode.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def episode_params
      params.fetch(:episode, {})
    end
end
