#!/bin/sh
# check that add works combined with commit -a
legit-init
echo line 1 >a
legit-add a
legit-commit -m 'first commit'
echo line 2 >>a
echo world >b
legit-add b
legit-commit -a -m 'second commit'
legit-show 1:a
legit-show 1:b
