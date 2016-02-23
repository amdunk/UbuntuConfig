#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os,sys,stat

print("Start...")

def conf_sudo():
	print("Config sudo for admin...")
	filename = "/etc/sudoers"
	os.chmod(filename,stat.S_IRUSR|stat.S_IWUSR|stat.S_IRGRP)
	file = open(filename,"a")
	file.write("#no password for admin user\n")
	file.write("dmin ALL=(ALL) NOPASSWD:ALL\n")
	file.close()

conf_sudo();

