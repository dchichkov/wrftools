function [ shear_h_lower_idx shear_h_upper_idx BR_h_lower_idx BR_h_upper_idx ] = get_height_index( Namelist )
%GET_HEIGHT_INDEX Summary of this function goes here
%   hard coded wrf levels indexes in time_serie_nwp_forecast
idx=[18 22 26 30 34 38]
switch 1
    case Namelist{1}.diagnostics_shear_heights_levels(1)==2
        shear_h_lower_idx=18
    case Namelist{1}.diagnostics_shear_heights_levels(1)==3
        shear_h_lower_idx=22
    case Namelist{1}.diagnostics_shear_heights_levels(1)==4
        shear_h_lower_idx=26
    case Namelist{1}.diagnostics_shear_heights_levels(1)==5
        shear_h_lower_idx=30
    case Namelist{1}.diagnostics_shear_heights_levels(1)==6
        shear_h_lower_idx=34
end %swith shear lower

switch 1
    case Namelist{1}.diagnostics_shear_heights_levels(2)==2
        shear_h_upper_idx=18
    case Namelist{1}.diagnostics_shear_heights_levels(2)==3
        shear_h_upper_idx=22
    case Namelist{1}.diagnostics_shear_heights_levels(2)==4
        shear_h_upper_idx=26
    case Namelist{1}.diagnostics_shear_heights_levels(2)==5
        shear_h_upper_idx=30
    case Namelist{1}.diagnostics_shear_heights_levels(2)==6
        shear_h_upper_idx=34
end %swith shear lower

switch 1
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(1)==0
        BR_h_lower_idx=1
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(1)==2
        BR_h_lower_idx=18
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(1)==3
        BR_h_lower_idx=22
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(1)==4
        BR_h_lower_idx=26
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(1)==5
        BR_h_lower_idx=30
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(1)==6
        BR_h_lower_idx=34
end %swith shear lower

switch 1
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(2)==2
        BR_h_upper_idx=18
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(2)==3
        BR_h_upper_idx    =22
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(2)==4
        BR_h_upper_idx    =26
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(2)==5
        BR_h_upper_idx    =30
    case Namelist{1}.diagnostics_Bulk_ricardson_heights_levels(2)==6
        BR_h_upper_idx    =34
end %swith shear lower


end
