module TemplateMethod
  class AbstractDisplay
    def display
      open
      5.times { _print }
      close
    end

    def open
      raise StandardError('You must implements!!')
    end

    def _print
      raise StandardError('You must implements!!')
    end

    def close
      raise StandardError('You must implements!!')
    end
  end
end
