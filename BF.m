clear;
clc;
function BF (in)
  a = [0];
  L = [];
  R = [];
  point = 1;
  rea = 1;
  i = 1;
  stack = [];
  while (i <= length(in))
    if (in(i)=='[')
      L(length(L)+1) = i;
      stack(length(stack)+1) = i;
    elseif (in(i) == ']')
      R(find(L==stack(length(stack)))) = i;
      stack(length(stack)) = [];
    endif
    i = i+1;
  endwhile
  while (true)
    b = in(rea);
    if (b=='[')
      if (a(point)==0)
        rea = R(find(L == rea));
      endif
    elseif (b==']')
      if (a(point)!=0)
        rea = L(find(R == rea));
      endif
    elseif (b == '<')
      point = point -1;
    elseif (b == '>')
      point = point + 1;
      if point > length(a)
        a = [a,0];
      endif
    elseif (b == '+')
        a(point) = a(point) + 1;
    elseif (b == '-')
        a(point) = a(point) - 1;
    elseif (b == '.')
      fprintf(char(a(point)))
    elseif (b == ',')
      a(point) = int8(input('','s')(1));
    endif
    if (rea == length(in))
      break
    endif
    rea = rea + 1;
  endwhile
end