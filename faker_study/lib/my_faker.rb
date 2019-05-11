require 'i18n'

I18n.load_path += Dir[File.join(__dir__, 'locales', '**/*.yml')]
I18n.reload! if I18n.backend.initialized?

module MyFaker

  class Config
    @locale = nil

    class << self
      attr_writer :locale
      
      def locale
        @locale || I18n.locale
      end
    end
  end

  class Base
    class << self
      def parse(key)
        fetched = fetch(key)
        parts = fetched.scan(/\#\{([^\}]+)\}([^#]+)?/).map do |meth, etc|
          text = if respond_to?(meth)
                   send(meth)
                 else
                   key_path = to_s.split('::').last.downcase
                   parse("#{key_path}.#{meth}")
                 end
          text + etc.to_s
        end
        parts.any? ? parts.join : fetched
      end

      def fetch(key)
        sample(I18n.t("faker.#{key}",
                      locale: MyFaker::Config.locale,
                      raise: true))
      end

      def sample(list)
        list.respond_to?(:sample) ? list.sample : list
      end      
    end

  end
  
end

Dir.glob(File.join(File.dirname(__FILE__), 'my_faker', '/**/*.rb')).sort.each { |file| require file }
