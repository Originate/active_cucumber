class SubscriptionCreator < ActiveCucumber::Creator

  def value_for_show show_name
    Show.find_by(name: show_name) || FactoryGirl.create(:show, name: show_name)
  end

  def value_for_subscriber subscriber_name
    subscriber_name == 'me' ? @current_user : subscriber_name
  end

end
