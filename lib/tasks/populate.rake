namespace :db do
  task populate: :environment do


    Country.destroy_all
    
    puts "Directory?"
    puts Dir.pwd
    f = File.read(File.join(Rails.root, "lib", "tasks", "countries.json"))
    countries = JSON.parse(f)

    countries.each do |c|
      country = Country.new(
        name:c["name"]["common"],
        code:c["cca2"],
        region:c["region"],
        region_code: c["region"][0..1].downcase,
        demonym: c["demonym"],
        checked: false
        )
      if (country.name.include?("z"))
        country.checked = true
      end
      country.save
    end
  end
end
