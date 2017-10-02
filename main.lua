
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


function SuperMatch()
  local myString = "Chris,Lars"
  
	  for word in string.gmatch(myString, '([^,]+)') do
      return word
    end
    
end


    local uno
    local duo
     
    Test();
    uno,duo = SuperMatch();
    print(maximum({8,10,23,12,5}))     --> 23   3 
    print (uno)
    




  