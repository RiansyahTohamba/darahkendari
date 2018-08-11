json.extract! blood_donor, :id, :name, :phone_number, :blood_type, :address, :created_at, :updated_at
json.url blood_donor_url(blood_donor, format: :json)
