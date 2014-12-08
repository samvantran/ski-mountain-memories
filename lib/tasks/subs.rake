 desc "destroys all subscriptions!"
  task destroy_subs: :environment do
    User.destroy_subs
  end
