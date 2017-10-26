$bus = 8
$walk = 5

def calculator(distance, bus_drive, bus_walk)
  
    busDist = bus_drive + bus_walk
    walkDist = distance

    walkHours = walkDist/$walk
    busHours = busDist/$bus

    p "Walk Hours: #{walkHours}"
    p "Bus Hours: #{busHours}"
  
    if walkHours < 1.0
        return "Walk"
    elsif walkHours < busHours 
        return "Walk"
    elsif busHours < walkHours
        return "Bus"
    elsif walkHours > 2
        return "Bus"
    elsif busHours == walkHours 
        return "Walk"
    end
end