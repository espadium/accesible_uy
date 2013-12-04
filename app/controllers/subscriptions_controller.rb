class SubscriptionsController < ApplicationController
  def index
    @accessibilities = Accessibility.all
    @subscription = Subscription.new
  end

  def new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    params[:accessibilities].each do |accessibility|
      @subscription.accessibilities << Accessibility.find(accessibility[0])
    end
    if @subscription.valid?
      @subscription.save
      flash[:notice] = I18n.t('subscriptions.success')
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
