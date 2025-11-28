#!/bin/bash
#SPDX-FileCopyrightText:2025 Rei Kawahigashi
#SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

out=$(echo "6 2" | ./DOW)
[ "${out}" = Tue. ] || ng "$LINENO"

out=$(echo "123 213" | ./DOW)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo ok
exit $res
