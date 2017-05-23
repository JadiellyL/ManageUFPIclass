json.extract! reserva, :id, :user_id, :sala_id, :time_input, :time_output, :date, :quantity, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
