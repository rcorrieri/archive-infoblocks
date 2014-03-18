require 'erb'

module Infoblocks
  class Display
    def self.disp(obj=nil)
      template_path = File.expand_path("templates/#{obj.class.to_s.split(':').last.downcase}.erb", File.dirname(__FILE__))

      if File.exists?(template_path)
        template = ERB.new(IO.read(template_path), nil, '-') 
        puts template(obj).result obj.instance_eval('binding')
      else
        puts obj._ref
      end
    end     
    
  end
end
