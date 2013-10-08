function Y=get_Y(good_turbine_data,turbine_idx,time_serie_nwp_forecast,Namelist,nwp_var)
%GET_Y Summary of this function goes here
% Makes a data pair of nwp var and observed power
%   Detailed explanation goes here
%get matching time idx
num_dtg_turbine=datenum(good_turbine_data(1,turbine_idx).power_production{1,2},'dd-mm-yyyy HH:MM:SS');
num_dtg_nwp=datenum(time_serie_nwp_forecast{1,2},'dd-mm-yyyy HH:MM');
if ischar(time_serie_nwp_forecast{2,nwp_var})
    j=0;display(['Working on ',cellstr(time_serie_nwp_forecast{2,nwp_var})]) 
else
j=0;display(['Working on ',cellstr(time_serie_nwp_forecast{2,nwp_var}{1,1}),' on:',time_serie_nwp_forecast{1,nwp_var-1}(1),' meter'])
end
for i=1:length(num_dtg_nwp)
    idx=find(abs(num_dtg_nwp(i)-num_dtg_turbine)<Namelist{1}.sekund_in_fraction_of_a_day);
    if isempty(idx)
    else
        j=j+1; % only count up if idx is not empty 
        Y(j,:)=[time_serie_nwp_forecast{1,nwp_var}(i) good_turbine_data(1,turbine_idx).power_production{1,3}(idx)];
    end
end
end