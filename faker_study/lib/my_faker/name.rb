module MyFaker
  class Name < Base
    class << self
      def name
        parse('name.name')
      end

      def first_name
        parse('name.first_name')
      end

      def male_first_name
        parse('name.male_first_name')
      end

      def female_first_name
        parse('name.male_first_name')
      end

      def last_name
        parse('name.last_name')
      end

      def prefix
        parse('name.prefix')
      end

    end
  end
end
