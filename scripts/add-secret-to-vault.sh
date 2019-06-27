#!/usr/bin/env bash
vault write secret/ahademo message=hello
vault read secret/demo