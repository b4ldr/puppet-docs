---
layout: default
built_from_commit: 7ee979c756ae4213067b12f9af7971ef380d60c4
title: 'Man Page: puppet report'
canonical: "/puppet/latest/man/report.html"
---

<div class='mp'>
<p>USAGE: puppet report <var>action</var> [--terminus _TERMINUS] [--extra HASH]</p>

<p>Create, display, and submit reports.</p>

<p>OPTIONS:
  --render-as FORMAT             - The rendering format to use.
  --verbose                      - Whether to log verbosely.
  --debug                        - Whether to log debug information.
  --extra HASH                   - Extra arguments to pass to the indirection
                                   request
  --terminus _TERMINUS           - The indirector terminus to use.</p>

<p>ACTIONS:
  info      Print the default terminus class for this face.
  save      API only: submit a report.
  submit    API only: submit a report with error handling.</p>

<p>TERMINI: json, msgpack, processor, rest, yaml</p>

<p>See 'puppet help report' or 'man puppet-report' for full help.</p>

</div>
