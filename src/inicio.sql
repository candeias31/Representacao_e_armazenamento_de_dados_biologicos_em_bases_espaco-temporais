select inicio, fim, count(*)
from
(select cellid, min(frame) inicio, max(frame) fim
from lifetime
group by cellid ) a
group by inicio, fim
having count(*) > 1
