class CompromissoValidator < ActiveModel::Validator
  def validate(record)
    if some_complex_logic
      record.errors.add :base, 'This record is invalid'
    end
  end

  private
    def some_complex_logic
      # ...
    end
end
