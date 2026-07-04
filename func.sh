#! /bin/bash
fun() {
    echo "${1:-defaultuser} age is ${2:-25}"
}

fun "jansi" 
fun "munni" "23"
