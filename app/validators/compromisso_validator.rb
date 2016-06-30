class CompromissoValidator < ActiveModel::Validator
  def validate(record)
    if some_complex_logic
      record.errors.add :base, 'Registro inválidos'
    end
  end

  private
    def some_complex_logic
      # Campo para futuras validaçoes de compromisso
    end
end
