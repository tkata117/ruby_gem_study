require 'my_i18n/backend/base'

module MyI18n
  module Backend

    class Simple
      module Implementation
        include Base
      end

      include Implementation
    end

  end
end
