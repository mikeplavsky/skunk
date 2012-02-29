#!/usr/bin/python

from jinja2 import Environment, FileSystemLoader

path2templates = ["./tests/queries/templates/queries", "./tests/queries/templates/common"]
path2result = "./tests/queries"

env = Environment(loader = FileSystemLoader( path2templates ))

def render(name, fn):

  template = env.get_template( name )
  res = template.render()

  import os
  open(os.path.join(path2result, fn), 'w' ).write( res )

render( "report1/bad_example1.sql", "bad_example1.sql" )
render( "report2/bad_example2.sql", "bad_example2.sql" )
render( "report3/good_example1.sql", "good_example1.sql" )


