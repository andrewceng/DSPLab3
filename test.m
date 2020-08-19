col = rand(4,3);
 for i = 1:4, X{i} = rand(10-i, 10)*2^i; end
 clear h
  for i = 1:4
     hi = plot(X{i}, 'Color', col(i,:)); 
     h(i) = hi(1); 
     if i == 1, hold on, end, 
   end
legend(h, {'Dataset 1' 'Dataset 2' 'Dataset 3' 'Dataset 4'})