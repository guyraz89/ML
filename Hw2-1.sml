fun firstn(0, xs, _) = xs
| firstn(n, xs, []) = raise Empty
| firstn(n, xs, (y::ys)) = firstn(n-1, xs@[y], ys);
