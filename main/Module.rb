module Modu
	def demo
		puts 'calling method: demo'
	end

	module ClassMethods
		def foo
			puts 'calling method: foo'
		end
	end
	
	module InstanceMethods
		def bar
		    puts 'calling method: bar'	
		end
	end
	
	def self.included(receiver)
		receiver.extend         ClassMethods
		receiver.send :include, InstanceMethods
	end
end