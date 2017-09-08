# monkey patches

module ::ActiveRecord
  class Base
    def self.method_missing(_name, *_args)
      # ignore this, so unknown/unloaded macros won't cause parsing to fail
    end
  end
end

class Object
	class << self
		def self.method_missing(_name, *_args)
		  # ignore this, so unknown/unloaded macros won't cause parsing to fail
		end

		def method_missing(_name, *_args)
		  # ignore this, so unknown/unloaded macros won't cause parsing to fail
		end
	end

	def self.method_missing(_name, *_args)
	  # ignore this, so unknown/unloaded macros won't cause parsing to fail
	end

	def method_missing(_name, *_args)
	  # ignore this, so unknown/unloaded macros won't cause parsing to fail
	end
end


module ::Hyperloop
	class Router
		class Component
		end
	end
end
