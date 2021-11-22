## Taks 1

$N = 100 000 000$ — записей в таблице

$p = 1 000 000$ — страниц

$t_{random page} = 28$

$t_{sequential page} = 0.28$

$t_{tree}(k) = k \cdot t_{random page}$ (предполагается, что полученые номера страниц не сортируются/дедуплицируются)

$t_{direct}(k) = p \cdot t_{sequential page} = 1 000 000 \cdot 0.28 = 280 000 = t_{random page} \cdot 10 000 = t_{tree}(10 000)$

$t_{tree}(N) = 100 000 000 \cdot 28 = 2 800 000 000 = t_{direct}(N) \cdot 10 000$

<ins>Ответ:</ins> а) $t_{tree}(k) = k \cdot t_{random page}$; б) k < 10000; быстрее в 10000 раз.
