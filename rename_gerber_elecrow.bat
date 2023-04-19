@echo off

set PROJECT="%1"
set COMPANY="_elecrow"
set OUTPUT="%PROJECT%%COMPANY%"

mkdir %OUTPUT%

copy "%PROJECT%"-F_Cu.gbr "%OUTPUT%"\"%PROJECT%".GTL
copy "%PROJECT%"-B_Cu.gbr "%OUTPUT%"\"%PROJECT%".GBL
copy "%PROJECT%"-F_Mask.gbr "%OUTPUT%"\"%PROJECT%".GTS
copy "%PROJECT%"-B_Mask.gbr "%OUTPUT%"\"%PROJECT%".GBS
copy "%PROJECT%"-F_SilkS.gbr "%OUTPUT%"\"%PROJECT%".GTO
copy "%PROJECT%"-B_SilkS.gbr "%OUTPUT%"\"%PROJECT%".GBO
copy "%PROJECT%"-NPTH.drl "%OUTPUT%"\"%PROJECT%"-NPTH.TXT
copy "%PROJECT%"-PTH.drl "%OUTPUT%"\"%PROJECT%"-PTH.TXT
copy "%PROJECT%"-Edge_Cuts.gbr "%OUTPUT%"\"%PROJECT%".GML
