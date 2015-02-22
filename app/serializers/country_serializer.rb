class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :region,:region_code,:checked, :demonym
end
