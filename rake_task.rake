namespace :db do
  desc 'Generate my custom users'
  task create_users: :environment do
    User.all.map(&:destroy)
    ActivityHistory.all.map(&:destroy)
    chris = User.new email: 'chris@ad60.com',
                     password: 'password',
                     password_confirmation: 'password'

    chris.confirm_terms = true
    chris.role = 'admin'
    chris.save

    customer = User.new email: 'chris+testing@ad60.com',
                        password: 'password',
                        password_confirmation: 'password'

    customer.confirm_terms = true
    customer.role = 'customer'

    customer.save

    subscription = Subscription.new(FactoryGirl.attributes_for(:subscription))
    subscription.update_attribute(:user, customer)
    subscription.make_vip!

    customer_profile = FactoryGirl.create(:profile, user: customer)

    customer_profile.update_attribute(:gender, 'male')

    FactoryGirl.create(:activity_history, user: customer, 
      activity: Activity.find(308))
  end
end