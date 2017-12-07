# Here I can subscribe to the rack.atack notifications and check what
# type of match was triggered. In this case, I’m looked for throttled
# events. I also have access to the request object, allowing me to
# pull out the user’s IP address.

ActiveSupport::Notifications.subscribe("rack.attack") do |name, start, finish, request_id, req|
  if req.env['rack.attack.match_type'] == :throttle
    Rails.logger.info "Throttled IP: #{req.ip}"
  end
end