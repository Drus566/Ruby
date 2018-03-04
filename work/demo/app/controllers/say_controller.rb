class SayController < ApplicationController
  def hello
    @time = Time.now
    @file = Dir.glob('*')
  end

  def goodbye
  end
end
