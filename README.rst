Check please tests folder.
There are two bad examples and good one

The point is you should construct main query template 
by including executable sub-templates which are preparing temp tables
for main template.

Such executable sub-templates are having input parameters as variables
and they are outputting into temporary table which can later be used 
by main template.

First it is very clear approach.
Second every such sub-template is testable independently! 
So testability of such system is very high.

Check **queries/templates/queries/report2** for good example.

Bad examples are using in the worst scenario **include** for part of WHERE
**queries/templates/queries/report1**

In the other example parent/child inheritance.
**queries/templates/queries/report2**

Both are obscure, difficult to maintain.
And used templates can not be tested!
