#release 0

def search (arr, int)
  found = nil
  i = 0
  while i < arr.length
    if arr[i] == int
      found = i
    end
  i += 1
  end
  found
end

#release 1

def fib(int)
  fibs = [0]
  if int == 1
    return fibs
  elsif int == 2 
    fibs << 1 
    return fibs
  elsif int == 3
    fibs << 1 << 1
    return fibs
  else 
    fibs << 1 << 1
    while int > fibs.length 
        fibs << fibs[-1] + fibs[-2] 
    end
  end
  fibs 
end

#release 2

#start with index 1
#compare index with index-1
#if greater than
  #swap
  #move left to next sorted number
#otherwise
  #stop
  #move on to next index of unsorted numbers (right)
#when index reaches array length, end program/display array

def insertion(arr)
  i = 1
  while i < arr.length
    j = i
    while j > 0 
      if arr[j-1] > arr[j] 
        arr[j], arr[j-1] = arr[j-1], arr[j]
      end
      j = j-1
    end
    i += 1
  end
  arr
end