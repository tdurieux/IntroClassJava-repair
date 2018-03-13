#!/usr/bin/env python

import os
import json
import re
import sys
import datetime

root = os.path.join(os.path.dirname(__file__), "..")


output =  " Bug Id | jGenProg | jKali | DynaMoth \n"
output += "------- | -------- | ----- | ---------\n"

body = ""

for project in sorted(os.listdir(root)):
	projectPath = os.path.join(root, project)
	if os.path.isfile(projectPath):
		continue
	if project == ".git" or project == "src":
		continue
	for user in sorted(os.listdir(projectPath)):
		userPath = os.path.join(projectPath, user)
		if os.path.isfile(userPath):
			continue
		for revision in sorted(os.listdir(userPath)):
			revisionPath = os.path.join(userPath, revision)
			if os.path.isfile(revisionPath):
				continue
			line = " %s %s %s |" % (project, user[0:6], revision)
			for tool in sorted(os.listdir(revisionPath)):
				toolPath = os.path.join(revisionPath, tool)
				if os.path.isfile(toolPath):
					continue
				dataPath = os.path.join(toolPath, "output.json")
				if not os.path.exists(dataPath):
					dataPath = os.path.join(toolPath, "astor_output.json")
				with open(dataPath) as fd:
					data = json.load(fd)
					#print data
					if 'patches' in data and len(data['patches']) > 0:
						line += " %d |" % len(data['patches'])

						body += "## %s %s %s %s \n" % (project, user[0:6], revision, tool)
						for path in data['patches']:
							body += """
```diff
%s
```\n""" % (path['PATCH_DIFF'].decode('string_escape'))
						#print project, user, revision, tool, len(data['patches'])
					elif 'nbAngelicValue' in data:
						line += " %d AV |" % data['nbAngelicValue']
					else:
						line += "   |"
			output += "%s\n" % line
output += "\n\n" + body
with open(os.path.join(root, "README.md"), "w") as fd:
	fd.write(output)
print output