module MyI18n
  class Config

    # locale ---

    def locale
      @locale ||= default_locale
    end

    def locale=(locale)
      @locale = locale
    end

    def default_locale
      @@default_locale ||= :en
    end

    def default_locale=(locale)
      @@default_locale = locale
    end

    def available_locales
    end

    def available_locales=(locales)
    end

    
    # backend ---

    def backend
      @@backend ||= Backend::Simple.new
    end

    def backend=(backend)
      @@backend = backend
    end


    # load_path ---

    def load_path
      @@load_path ||= []
    end

    def load_path=(load_path)
      @@load_path += load_path
    end

  end
end
