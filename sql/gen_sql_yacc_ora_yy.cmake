
file(READ "${IN}" yytmp)

string(REGEX REPLACE "%ifdef +${ENABLE} *" "" yytmp "${yytmp}")
string(REGEX REPLACE "%endif +${ENABLE} *" "" yytmp "${yytmp}")
string(REGEX REPLACE "%ifdef +[A-Za-z0-9_]+ *" "/*" yytmp "${yytmp}")
string(REGEX REPLACE "%endif +[A-Za-z0-9_]+ *" "*/" yytmp "${yytmp}")

file(WRITE "${OUT}" "${yytmp}")
