local ExClass = {};
ExClass.__index = ExClass;

function ExClass.new(init)
	local self = setmetatable({}, ExClass);
	self.value = init;
	return self;
end

function ExClass.set_value(self, newval)
	self.value = newval;
end

function ExClass.get_value(self)
	return self.value;
end

return ExClass;
