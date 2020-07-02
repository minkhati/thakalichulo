module ApplicationHelper
  def current_order
    # use find_by_id to avoid potential error
    # if Order.find_by_id(session[:order_id]).nil?
    #   Order.new
    # else
    #   Order.find_by_id(session[:order_id])
    # end
    @current_order ||= Order.find_by_id(session[:order_id]).presence || Order.new
  end
end
