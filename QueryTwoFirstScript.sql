SELECT P.Pid, FirstN, Zip, Address
FROM Person P
LEFT OUTER JOIN Address A on P.Pid = A.Pid