#!/bin/sh
awk -F "/" '/^\// {print $NF}' /etc/shells
