.qi.import`event

\d .cron

try:$[system"e";{z;(1b;x@y;"")};.qi.try]
jobs:1!flip`func`start`period`lastRun`nextRun`error!"spnpp*"$\:()
add:{[func;start;period] `.cron.jobs upsert(func;.z.p^start;p;0Np;start+p:"n"$period;"");}
run1:{[job;now] r:try[get job;now;{x}];jobs[job]:e,`lastRun`nextRun`error!(now;$[(p:(e:jobs job)`period)in 0N 0Wn;0Wp;now+p];r 2)}
run:{run1[;x]each exec func from jobs where nextRun<x;}
start:{if[not system"t";system"t ",.qi.tostr .conf.QTIMER]}

\d .

.event.addhandler[`.z.ts;`.cron.run]
