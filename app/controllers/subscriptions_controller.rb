class SubscriptionsController < ApplicationController
  def index
    @accessibilities = Accessibility.all
    @subscription = Subscription.new
  end

  def new
  end

  def create

    @subscription = Subscription.new(subscription_params)
    params[:accessibilities].each do |a|
      @subscription.accessibilities << Accessibility.find(a[0])
    end
    if @subscription.valid?
      @subscription.save
      flash[:notice] = 'Felicitaciones te has suscripto. Recibirás información cuando esté disponible.'
      redirect_to subscriptions_path
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def subscription_params
      params.require(:subscription).permit(:subscriptor)
    end

end
