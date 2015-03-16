module ApplicationHelper

  def teams?
    !!(request.path =~ /teams/)
  end

end
