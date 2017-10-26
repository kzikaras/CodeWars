def most_frequent_item_count(collection)
    if collection == []
      return 0
    end
    collection.sort!
    i=0
    count = 0
    totalOne = 0
    totalTwo = 0
    p collection
    while i < collection.length do
      count = count+1
      if collection[i] != collection[i+1]
        if totalOne >= totalTwo
            if totalOne <= count
                totalOne = count
            end
          
        elsif totalTwo >= totalOne
            if totalTwo >= count
                totalTwo = count
            end
          
        end
        count = 0
      end
      i = i+1
    end
    if totalOne > totalTwo
      return totalOne
    elsif totalTwo > totalOne
      return totalTwo
    end
end