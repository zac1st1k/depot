class SayController < ApplicationController
  def hello
    @files = Dir.glob('*')
    @time = Time.now
  end

  def goodbye
  end

end