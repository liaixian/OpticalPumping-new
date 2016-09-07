function DampingRate = DampingRate(atom, condition)
 fundamental_constants;
 thermal_v = sqrt(kB*condition.temperature*NA/atom.pm.MW); % cm/s, v=Eq(6.111) 
 
 slef_SD = condition.density*thermal_v*atom.SD_self_cross_section * 2*pi*1e-6;
 He_SD = condition.He_density*thermal_v*atom.SD_He_cross_section * 2*pi*1e-6;
 Xe_SD = condition.Xe_density*thermal_v*atom.SD_Xe_cross_section * 2*pi*1e-6;
 N2_SD = condition.N2_density*thermal_v*atom.SD_N2_cross_section * 2*pi*1e-6;
 Xe_abundance = 0.264;
 DampingRate = slef_SD + He_SD + Xe_abundance*Xe_SD + N2_SD; 
end