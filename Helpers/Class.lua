function Class()
    local cls = {}
    cls.__index = cls
    setmetatable(
        cls,
        {
            __call = function(self, attributes, ...)
                attributes = attributes or {}
                local instance = setmetatable(attributes, self)
                instance:New(attributes, ...)
                return instance
            end
        }
    )
    return cls
 end
