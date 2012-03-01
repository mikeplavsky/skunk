#!/usr/bin/python

from jinja2 import Environment, FileSystemLoader
import os

templates_dirs = ["./tests/queries/templates/queries", "./tests/queries/templates/common"]
path2templates = './tests/queries/templates/queries'
path2result = './tests/queries'

env = Environment(loader = FileSystemLoader( templates_dirs ))

def render(tmpl):

  template = env.get_template( tmpl[1] )
  res = template.render()

  open(tmpl[0], 'w' ).write( res )

def get_templates(tmpl_path):

  for path, _, filelist in os.walk(tmpl_path):
    for name in filelist:

      report = os.path.split(path)[1]
      yield [report, os.path.join(report,name), name]


def mkdir(where, templates):

  for tmpl in templates:

    import shutil
    path = os.path.join(where, tmpl[0])

    shutil.rmtree(path, ignore_errors=True)
    os.makedirs( path )

    tmpl[0] = os.path.join( path, tmpl[2] )

    yield tmpl

templates =  get_templates(path2templates)
for x in mkdir(path2result, templates): render(x)
    
    
