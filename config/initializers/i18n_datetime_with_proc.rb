module DateTimeSupport
  def t(format = nil)
    type = self.respond_to?(:sec) ? 'time' : 'date'
    formats = I18n.translate(:"#{type}.formats")
    format = formats[format.to_sym] if formats && formats[format.to_sym]

    I18n.localize(self, :format => format.respond_to?(:call) ? format.call(self) : format)
  end
end

class Time
  include DateTimeSupport
end

class Date
  include DateTimeSupport
end

class DateTime
  include DateTimeSupport
end

class ActiveSupport::TimeWithZone
  include DateTimeSupport
end
