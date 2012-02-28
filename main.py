#!/usr/bin/python

from jinja2 import Environment, FileSystemLoader

path2templates = ["./tests/queries/templates/queries", "./tests/queries/templates/common"]
path2result = "./tests/queries"

env = Environment(loader = FileSystemLoader( path2templates ))

template = env.get_template( "report1/v12.sql")
res = template.render()

import os
open(os.path.join(path2result, 'v12.sql'), 'w' ).write( res )

template = env.get_template( "report2/v14.sql")
res = template.render()

open(os.path.join(path2result, 'v14.sql'), 'w' ).write( res )



