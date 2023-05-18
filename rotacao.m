clc
clear

function [retval] = Rz(a)
  retval = [cosd(a) -sind(a) 0; sind(a) cosd(a) 0;0 0 1];
endfunction

function [retval] = Ry(a)
  retval = [cosd(a) 0 sind(a); 0 1 0; -sind(a) 0 cosd(a)];
endfunction

function [retval] = Rx(a)
  retval = [1 0 0; 0 cosd(a) -sind(a);0 sind(a) cosd(a)];
endfunction

function [retval] = transl(m, d, p)
  r = zeros(4);
  r(1:3, 1:3) = m;
  r(1:4, 4) = [d;1];
  retval = (r*[p;1])(1:3);
endfunction

# 1) Um vetor 𝐴𝑃 é rotacionado 30𝑜 em torno de 𝑌a
# 𝐴 e em seguida
# é rotacionado 45𝑜 em torno de 𝑋a
# 𝐴. Dê a matriz rotacional que
# realiza essas rotações na ordem dada.

Rx(45)*Ry(30)

#ans =
#
#   0.8660        0   0.5000
#   0.3536   0.7071  -0.6124
#  -0.3536   0.7071   0.6124
#

# 2) Um sistema de referência {B} tem sua localização coincidente
# de início com a do sistema de referência {A}. Rotacionamos {B}
# 30𝑜 em torno de Zb
# 𝐵 e, depois, o sistema de referência resultante
# 45𝑜 em torno de 𝑋b
# 𝐵. Dê a matriz rotacional que mudará a
# descrição dos vetores de 𝐵𝑃 para 𝐴𝑃.

Rz(30)*Rx(45)

# ans =
#
#    0.8660  -0.3536   0.3536
#    0.5000   0.6124  -0.6124
#         0   0.7071   0.7071
#

# Exercicio 3
antes = [10; 20; 30]
depois = Rz(30)*antes

#antes =
#
#   10
#   20
#   30
#

#depois =
#
#   -1.3397
#   22.3205
#   30.0000
#


