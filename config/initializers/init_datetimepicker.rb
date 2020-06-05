# Example "11/03/2016 13:00"
ActiveAdminDatetimepicker::Base.default_datetime_picker_options = {
    format: 'd/m/Y H:i', # JS format
    defaultTime: proc { Time.current.strftime('%H:%M') } # not necessary
}
ActiveAdminDatetimepicker::Base.format = "%d/%m/%Y %H:%M" # Ruby format
