#!/bin/bash
uuidgen | tr '[:upper:]' '[:lower:]' | tr -d '\n' | pbcopy