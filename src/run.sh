#!/bin/bash
echo -n $(uuidgen | tr '[:upper:]' '[:lower:]') | pbcopy