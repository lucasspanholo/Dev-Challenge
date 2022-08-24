class HomeController < ApplicationController
  
  before_action :set_global_variable_task

  def index
    @variable = @variable_task.general
  end

  def ruby
    @ruby = @variable_task.ruby
  end

  def python
    @python = @variable_task.python
  end

  def elixir
    @elixir = @variable_task.elixir
  end

  def nodejs
    @nodejs = @variable_task.nodejs
  end

  def aspnet
    @aspnet = @variable_task.aspnet
  end

  private

  def set_global_variable_task
    @variable_task = GlobalVariable.new
  end
  
end