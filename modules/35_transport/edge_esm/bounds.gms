*** |  (C) 2006-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/35_transport/edge_esm/bounds.gms
$ifthen.ccu %CCU% == "on"
v35_shSynSe.lo(t,regi)$(t.val > 2021) = 0.1;
v35_shSynSe.lo(t,regi)$(t.val > 2025) = 0.2;
v35_shSynSe.lo(t,regi)$(t.val > 2030) = 0.4;
$endif.ccu

*** upper bound on bioliquids to 2020 value for all scenarios
v35_shBioFe.up(t,regi).up$(t.val > 2020) = v35_shBioFe.l("2020",regi);

*** EOF ./modules/35_transport/edge_esm/bounds.gms
