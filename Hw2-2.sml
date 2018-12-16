fun transpose([]::_) = []
| transpose rows = (map hd rows)::transpose(map tl rows);
