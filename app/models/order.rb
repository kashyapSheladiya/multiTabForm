class Order < ApplicationRecord
  attr_accessor :shipping_name, :billing_name
  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[shipping billing confirmation]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end
end
