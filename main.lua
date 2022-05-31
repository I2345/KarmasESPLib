local lib = {}
local espTable = {}

function lib:ShutDown()
  for _,v in pairs(espTable) do
    if v.Type == "box_d" then
      v.item:Remove()
    elseif v.Type == "instance" then
      v.item:Destroy()
    elseif v.Type == "array_d" then
      for i,e in pairs(v.item) do
        e:Remove()
      end
    elseif v.Type == "array_instance" then
      for i,e in pairs(v.item) do
        e:Destroy()
      end
    end
    end
  end
end



return lib
