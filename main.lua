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
  --local myString = "Chris,Lars"
  
	  for word in string.gmatch(myString, '([^,]+)') do
      return word
    end
    
end

function (Befehl)
  --local myString = "Chris,Lars"
  
	  for word in string.gmatch(myString, '([^,]+)') do
      return word
    end
    
end


    local Befehl
    local Wert
     
    Test();
    Befehl ,Wert = MatchString("Chris,Lars");
    --print(maximum({8,10,23,12,5}))     --> 23   3 
    print (Befehl)
