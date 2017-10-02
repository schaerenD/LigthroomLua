function maximum (a)
      local mi = 1          -- maximum index
      local m = a[mi]       -- maximum value
      for i,val in ipairs(a) do
        if val > m then
          mi = i
          m = val
        end
      end
      return m, mi
    end
    
function Test()
	  print( "Hallo Welt" )
end


function MatchString(myString)


function Befehlsdecoder (Befehl)
    
end

    local StringIn = "Chris,Lars,Daniel"
    Richtung = "set"
    Befehl = {}
    local Wert
     
    --Test();
    Wert = MatchString("Chris,Lars,Daniel");
    --Befehlsdecoder (Befehl)
    print(Befehl[0])
    --print(maximum({8,10,23,12,5}))     --> 23   3 
    --print (Befehl)  --local myString = "Chris,Lars"
  local i = 0
  
	  for word in string.gmatch(myString, '([^,]+)') do
	    Befehl[i] = word
	    i = i + 1
	    print(word)
    end
    return "Hello"
    
end

function Befehlsdecoder (Befehl)
    
end

    local StringIn = "Chris,Lars,Daniel"
    Richtung = "set"
    Befehl = {}
    local Wert
     
    --Test();
    Wert = MatchString("Chris,Lars,Daniel");
    --Befehlsdecoder (Befehl)
    print(Befehl[0])
    --print(maximum({8,10,23,12,5}))     --> 23   3 
    --print (Befehl)
