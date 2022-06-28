require 'flipper/adapters/active_record'

# Add an admins groups for an easy way to add all Admins to have access.
Flipper.register(:admins) do |actor, context|
	actor.respond_to?(:admin?) && actor.admin?
end