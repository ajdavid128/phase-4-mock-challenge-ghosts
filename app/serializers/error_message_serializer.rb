class ErrorMessageSerializer < ActiveModel::Serializer
 
  def self.butts_errors(errors)
    errors.map do |error|
      "#{error.attribute} #{error.message}"
    end
  end
  
end
