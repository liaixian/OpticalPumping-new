function [Eg, Gamma_g] = OpticalPumpingRate( effHg )
%OPTICALPUMPINGRATE Summary of this function goes here
%   Detailed explanation goes here
    [dim, ~]=size(effHg);
    Eg = real(trace(effHg)/dim);
    Gamma_g= - imag(trace(effHg)/dim)*2.0;
end

