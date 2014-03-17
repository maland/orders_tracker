class OrderStatus
  # only serves as a stub as in the requirements no api was given…
  # can be enlarged / altered according to the needs
  # for the sake of example two statuses are defined
  def self.find(tracking_code)
    [
      { datetime: DateTime.parse("15.03.2014 08:00"), info: "packed" },
      { datetime: DateTime.parse("15.03.2014 10:30"), info: "shipped" },
      { datetime: DateTime.parse("17.03.2014 10:45"), info: "successful delivered" },
    ]
  end
end