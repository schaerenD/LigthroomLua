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

----------------- set LR Function -----------------

function Test()
	  print( "Hallo Welt" )
end

----------------- set LR Function -----------------

----------------- get LR Function -----------------

function LR_Get_Temperatur()
	  
	  local Temperature = LrDevelopController.getValue("Temperature")
	  return Temperature
	  
end

function LR_Get_Temperatur()
	  
	  local Temperature = LrDevelopController.getValue("Temperature")
	  return Temperature
	  
end

----------------- get LR Function -----------------

function Test()
	  print( "Hallo Welt" )
end

function MatchString(myString)
     
   
  Wert = MatchString("Chris,Lars,Daniel");
    
  local i = 0
  local Befehlswert = {}
  
	 for word in string.gmatch(myString, '([^,]+)') do
	    Befehlswert[i] = word
	    i = i + 1
	    print(word)
   end
   
   Richtung = Befehlswert[0]
   Befehl = Befehlswert[1]
   Wert = Befehlswert[2]
   
   return "Done"
    
end

function Befehlsdecoder (Befehl)

			
    
end

    local StringIn = "Chris,Lars,Daniel"
    Richtung = "set"
    Befehl = {}					--Befehlsarray
    local Wert
     
    --Test();
    Wert = MatchString("Chris,Lars,Daniel");
    --Befehlsdecoder (Befehl)
    print(Befehl[0])
    --print(maximum({8,10,23,12,5}))     --> 23   3 
    --print (Befehl)
