function U = forwdif (f, c1, c2, a, b, d, n, m)
  % Bemenet - u0 = u(x, 0) mint karakterlánc 'u0'
  % - a és b a jobb oldali végpontjai a [0,a] és [0, b] 
  % - d állandó a hőegyenletben
  % - n és m rácspontok a [0, a] és [0, b] területen
  % Kimenet- U megoldási mátrix
  % Paraméterek és U inicializálása
  h = a/(n-1);
  k = b/(m-1);
  r = d^2*k/h^2;
  s = 1-2*r;
  U = zeros (n, m);
  % Peremfeltételek
  U(1, 1:m) = c1;
  U(n, 1:m) = c2;
  % Első sor generálása
   U(2:n-1, 1) = feval(f, h:h:(n-2)*h)';
  % Az U hátralevő sorainak generálása
  for j = 2:m
    for i = 2:n-1
    U(i, j) = s*U(i, j-1)+r*(U(i-1, j-1)+U(i+1, j-1));
    end
  end
  U = U';
end
