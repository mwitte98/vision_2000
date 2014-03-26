class CertainEmailValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    unless value == "dwitte1@rochester.rr.com" || "mcw9612@rit.edu"
      object.errors[attribute] << (options[:message] || "You do not have permission to sign up for this site.")  
    end  
  end  
end  