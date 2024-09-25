function U = crnich (f, c1, c2, a, b, d, n, m)
  % Bemenet - f = u(x, 0) mint 'f' karakterlánc
  % - c1 = u(0, t) és c2 = u(a, t)
  % - a és b a jobb oldali végpontjai a [0, a] és [0, b]
  % - d állandó a heat equation
  % - n és m rácspontok a [0, a] és [0, b] területen
  % Kimenet - U megoldás mátrix
  % Paraméterek és U inicializálása
   
  h = a/(n-1);
  k = b/(m-1);
  r = d^2*k/h^2;
  s1 = 2+2/r;
  s2 = 2/r-2;
  U = zeros (n, m);
  % Peremfeltételek
  U(1, 1:m) = c1;
  U(n, 1:m) = c2;
  % Első sor generálása
  U(2:n-1, 1) = feval(f, h:h:(n-2)*h)';
  % Megalkotja a főátlót és a főátlón kívüli elemeket 
  % az A és a konstans B vector segítségével majd megoldja
  % az AX = B tridiagonális rendszert 
  Vd(1, 1:n) = s1*ones(1, n);
  Vd(1) = 1;
  Vd(n) = 1;
  Va = -ones(1, n-1);
  Va(n-1) = 0;
  Vc = -ones(1, n-1);
  
  Vc(1) = 0;
  Vb(1) = c1;
  Vb(n) = c2;
  for j = 2:m
    for i = 2:n-1
    Vb(i) = U(i-1, j-1)+U(i+1, j-1)+s2*U(i, j-1);
    end
    X = trisys(Va, Vd, Vc, Vb);
    U(1:n, j) = X';
  end
  U = U';
end
