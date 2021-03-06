---
layout: default
built_from_commit: 7ee979c756ae4213067b12f9af7971ef380d60c4
title: 'Man Page: puppet node'
canonical: "/puppet/latest/man/node.html"
---

<div class='mp'>
<p>USAGE: puppet node <var>action</var> [--terminus _TERMINUS] [--extra HASH]</p>

<p>This subcommand interacts with node objects, which are used by Puppet to
build a catalog. A node object consists of the node's facts, environment,
node parameters (exposed in the parser as top-scope variables), and classes.</p>

<p>OPTIONS:
  --render-as FORMAT             - The rendering format to use.
  --verbose                      - Whether to log verbosely.
  --debug                        - Whether to log debug information.
  --extra HASH                   - Extra arguments to pass to the indirection
                                   request
  --terminus _TERMINUS           - The indirector terminus to use.</p>

<p>ACTIONS:
  clean    Clean up signed certs, cached facts, node objects, and reports for a
           node stored by the puppetmaster
  find     Retrieve a node object.
  info     Print the default terminus class for this face.</p>

<p>TERMINI: exec, json, memory, msgpack, plain, rest, store_configs, yaml</p>

<p>See 'puppet help node' or 'man puppet-node' for full help.</p>

</div>
