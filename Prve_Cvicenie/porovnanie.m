t=0:.01:200;
f_iter = @() funkcia_iter(t);
f_vekt = @() funkcia_vekt(t);
cas_vykonania_iter = timeit(f_iter)
cas_vykonania_vekt = timeit(f_vekt)