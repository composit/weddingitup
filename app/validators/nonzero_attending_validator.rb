class NonzeroAttendingValidator < ActiveModel::EachValidator
  def validate_each( object, attribute, value )
    object.errors[attribute] << "cannot be zero if you are attending" if( object.attending && value.to_i == 0 )
  end
end
