AdminUser.find_or_create_by!(email: "admin@example.com") do |admin|
  admin.password = "password"
  admin.password_confirmation = "password"
end

customers = [
  {
    full_name: "Maya Chen",
    phone_number: "204-555-0110",
    email_address: "maya.chen@example.com",
    notes: "Interested in winter jacket inventory updates."
  },
  {
    full_name: "Noah Williams",
    phone_number: "204-555-0182",
    email_address: "",
    notes: "Prefers phone calls after 4 PM."
  },
  {
    full_name: "Ava Thompson",
    phone_number: "204-555-0144",
    email_address: "ava.thompson@example.com",
    notes: "Requested follow-up about bulk order pricing."
  },
  {
    full_name: "Liam Patel",
    phone_number: "204-555-0197",
    email_address: nil,
    notes: "Walk-in customer. Email address not provided."
  },
  {
    full_name: "Sofia Garcia",
    phone_number: "204-555-0136",
    email_address: "sofia.garcia@example.com",
    notes: "Asked to be notified when new stock arrives."
  }
]

sample_image = Rails.root.join("db/seed_assets/customer_avatar.svg")

customers.each do |attributes|
  customer = Customer.find_or_initialize_by(full_name: attributes[:full_name])
  customer.update!(attributes)

  next if customer.image.attached?

  customer.image.attach(
    io: File.open(sample_image),
    filename: "customer_avatar.svg",
    content_type: "image/svg+xml"
  )
end
