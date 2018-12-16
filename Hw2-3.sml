fun innerProduct [] _ = 0.0
| innerProduct _ [] = 0.0
| innerProduct (x::xs) (y::ys) = (x * y) + innerProduct xs ys;

fun multMatVect ([]::_) [] = []
| multMatVect [] _ = []
| multMatVect matrix vector = map (innerProduct vector) matrix;

fun multMatMat [] _ = []
| multMatMat _ [] = []
| multMatMat N M = map (innerProduct (hd M)) N::multMatMat N (tl M);
