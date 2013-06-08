# Form helper integration
# require 'active_enum/form_helpers/formtastic'  # for Formtastic <2
# require 'active_enum/form_helpers/formtastic2' # for Formtastic 2.x


ActiveEnum.setup do |config|

  # Extend classes to add enumerate method
  # config.extend_classes = [ ActiveRecord::Base ]

  # Return name string as value for attribute method
  config.use_name_as_value = true

  # Storage of values (:memory, :i18n)
  # config.storage = :memory
	require 'active_enum/form_helpers/simple_form'
end

ActiveEnum.define do
	enum(:grouptype) do

		value 1 => 'High School'
		value 2 => 'Collegiate'
		value 3 => 'Post-Collegiate'
		value 4 => 'Professional'
		value 5 => 'Other'
	end
end