module MyI18n
  autoload :Backend, 'my_i18n/backend'
  autoload :Config, 'my_i18n/config'

  module Base

    def config
      Thread.current[:my_i18n_config] ||= MyI18n::Config.new
    end

    def config=(value)
      Thread.current[:my_i18n_config] = value
    end

    %w(locale default_locale backend
       available_locales load_path).each do |method|
      module_eval <<-DELEGATORS
        def #{method}
          config.#{method}
        end

        def #{method}=(value)
          config.#{method} = (value)
        end
      DELEGATORS
    end
   
  end

  extend Base

end
