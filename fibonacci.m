function fibov = fibonacci(m)
%FIBONACCI Calcola i primi m numeri di fibonacci
%   usa la formula F_{n+2} = F_{n+1} + F_n
assert(m>1,"L'argomento deve essere almeno 2");
fibov = [1 1];
for i = 2:m-1
    % uso end per indicare la posizione dell'ultimo elemento
    fibov(end+1) = fibov(end) + fibov(end-1);
end


