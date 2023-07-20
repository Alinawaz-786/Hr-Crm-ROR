# app/helpers/countries_helper.rb
module CountriesHelper
  def countries_list
    file_path = Rails.root.join('public', 'countries.json')
    json_data = File.read(file_path)
    JSON.parse(json_data)
  end
end
