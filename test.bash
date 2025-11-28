#!/bin/bash
#SPDX-FileCopyrightText:2025 Rei Kawahigashi
#SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo "$1行目が違うよ"
        res=1
}

res=0

out=$(echo "6 2" | ./dow)
[ "${out}" = Tue. ] || ng "$LINENO"

out=$(echo "3 15" | ./dow)
[ "${out}" = Sun. ] || ng "$LINENO"

out=$(echo "13 32" | ./dow)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "abc def" | ./dow)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./dow)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo ok
exit $res
