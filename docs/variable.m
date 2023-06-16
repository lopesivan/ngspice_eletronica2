
function v = calculate_v(X, R1, R2, R3, V)
  v = (X / (R1 + R2 + R3)) * V;
endfunction


R1 = 100;
R2 = 200;
R3 = 300;
V = 5;

v = calculate_v(R1, R1, R2, R3, V);
disp(v);
