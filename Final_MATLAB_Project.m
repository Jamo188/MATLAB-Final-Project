close all
clear all

% Initialize constants

% California (First File)
row_start = 399;
row_del = 1300;
col_start = 100;
col_del = 1000;

% Desert dust (second file)
% row_start = 2000;
% row_del = 1200;
% col_start = 800;
% col_del = 1100;

% Texas (third file)
% row_start = 1000;
% row_del = 1000;
% col_start = 50;
% col_del = 900;

% change to your directory and file name
filename="C:\Users\jwmoo\OneDrive\Desktop\Observations\GMODO-SVM01-SVM02-SVM03-SVM04-SVM05-SVM06-SVM07-SVM08-SVM09-SVM10-SVM11-SVM12-SVM13-SVM14-SVM15-SVM16_npp_d20250108_t2040370_e2046174_b68405_c20250428120457806644_oeac_ops.h5";
% filename="C:\Users\jwmoo\OneDrive\Desktop\Observations\GMODO-SVM01-SVM02-SVM03-SVM04-SVM05-SVM06-SVM07-SVM08-SVM09-SVM10-SVM11-SVM12-SVM13-SVM14-SVM15-SVM16_npp_d20241015_t1524238_e1530042_b67196_c20250428115638771842_oebc_ops.h5";
% filename="C:\Users\jwmoo\OneDrive\Desktop\Observations\GMODO-SVM01-SVM02-SVM03-SVM04-SVM05-SVM06-SVM07-SVM08-SVM09-SVM10-SVM11-SVM12-SVM13-SVM14-SVM15-SVM16_npp_d20240426_t1917403_e1923207_b64758_c20250428115422746121_oebc_ops.h5";

file_idf = H5F.open (filename,  'H5F_ACC_RDONLY', 'H5P_DEFAULT');

DATAFIELD_NAME = '/All_Data/VIIRS-M1-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref1=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M1-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref1_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref1=ori_ref1*ref1_factor(1)+ref1_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M2-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref2=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M2-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref2_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref2=ori_ref2*ref2_factor(1)+ref2_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M3-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref3=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M3-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref3_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref3=ori_ref3*ref3_factor(1)+ref3_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M4-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref4=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M4-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref4_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref4=ori_ref4*ref4_factor(1)+ref4_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M5-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref5=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M5-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref5_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref5=ori_ref5*ref5_factor(1)+ref5_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M6-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref6=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M6-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref6_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref6=ori_ref6*ref6_factor(1)+ref6_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M7-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref7=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M7-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref7_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref7=ori_ref7*ref7_factor(1)+ref7_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M8-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref8=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M8-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref8_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref8=ori_ref8*ref8_factor(1)+ref8_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M9-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref9=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M9-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref9_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref9=ori_ref9*ref9_factor(1)+ref9_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M10-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref10=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M10-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref10_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref10=ori_ref10*ref10_factor(1)+ref10_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M11-SDR_All/Reflectance';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref11=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M11-SDR_All/ReflectanceFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref11_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref11=ori_ref11*ref11_factor(1)+ref11_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M12-SDR_All/BrightnessTemperature';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref12=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M12-SDR_All/BrightnessTemperatureFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref12_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref12=ori_ref12*ref12_factor(1)+ref12_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M13-SDR_All/BrightnessTemperature';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref13=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
% DATAFIELD_NAME = '/All_Data/VIIRS-M13-SDR_All/BrightnessTemperatureFactors';
% ref_id = H5D.open (file_idf, DATAFIELD_NAME);
% ref13_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
% ref13=ori_ref13*ref13_factor(1)+ref13_factor(2);
ref13 = ori_ref13;

DATAFIELD_NAME = '/All_Data/VIIRS-M14-SDR_All/BrightnessTemperature';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_ref14=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M14-SDR_All/BrightnessTemperatureFactors';
ref_id = H5D.open (file_idf, DATAFIELD_NAME);
ref14_factor=H5D.read (ref_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
ref14=ori_ref14*ref14_factor(1)+ref14_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M15-SDR_All/BrightnessTemperature';
temp_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_temp15=H5D.read (temp_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M15-SDR_All/BrightnessTemperatureFactors';
temp_id = H5D.open (file_idf, DATAFIELD_NAME);
temp15_factor=H5D.read (temp_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
temp15=ori_temp15*temp15_factor(1)+temp15_factor(2);

DATAFIELD_NAME = '/All_Data/VIIRS-M16-SDR_All/BrightnessTemperature';
temp_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_temp16=H5D.read (temp_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
DATAFIELD_NAME = '/All_Data/VIIRS-M16-SDR_All/BrightnessTemperatureFactors';
temp_id = H5D.open (file_idf, DATAFIELD_NAME);
temp16_factor=H5D.read (temp_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');
temp16=ori_temp16*temp16_factor(1)+temp16_factor(2);


DATAFIELD_NAME = '/All_Data/VIIRS-MOD-GEO_All/Longitude';
lon_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_lon=H5D.read (lon_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');

DATAFIELD_NAME = '/All_Data/VIIRS-MOD-GEO_All/Latitude';
lat_id = H5D.open (file_idf, DATAFIELD_NAME);
ori_lat=H5D.read (lat_id,'H5T_NATIVE_DOUBLE', 'H5S_ALL', 'H5S_ALL', 'H5P_DEFAULT');


vlat1 =  fliplr(rot90(ori_lat));
vlon1 =  fliplr(rot90(ori_lon));
band1 = fliplr(rot90(ref1));
band2 = fliplr(rot90(ref2));
band3 = fliplr(rot90(ref3));
band4 = fliplr(rot90(ref4));
band5 = fliplr(rot90(ref5));
band6 = fliplr(rot90(ref6));
band7 = fliplr(rot90(ref7));
band8 = fliplr(rot90(ref8));
band9 = fliplr(rot90(ref9));
band10 = fliplr(rot90(ref10));
band11 = fliplr(rot90(ref11));
band12 = fliplr(rot90(ref12));
band13 = fliplr(rot90(ref13));
band14 = fliplr(rot90(ref14));
band15 = fliplr(rot90(temp15));
band16 = fliplr(rot90(temp16));

% Select desired bands
b1 = band1(col_start:col_start + col_del, row_start:row_start + row_del);
b2 = band2(col_start:col_start + col_del, row_start:row_start + row_del);
b3 = band3(col_start:col_start + col_del, row_start:row_start + row_del);
b4 = band4(col_start:col_start + col_del, row_start:row_start + row_del);
b5 = band5(col_start:col_start + col_del, row_start:row_start + row_del);
b6 = band6(col_start:col_start + col_del, row_start:row_start + row_del);
b7 = band7(col_start:col_start + col_del, row_start:row_start + row_del);
b8 = band8(col_start:col_start + col_del, row_start:row_start + row_del);
b9 = band9(col_start:col_start + col_del, row_start:row_start + row_del);
b10 = band10(col_start:col_start + col_del, row_start:row_start + row_del);
b11 = band11(col_start:col_start + col_del, row_start:row_start + row_del);
b12 = band12(col_start:col_start + col_del, row_start:row_start + row_del);
b13 = band13(col_start:col_start + col_del, row_start:row_start + row_del);
b14 = band14(col_start:col_start + col_del, row_start:row_start + row_del);
b15 = band15(col_start:col_start + col_del, row_start:row_start + row_del);
b16 = band16(col_start:col_start + col_del, row_start:row_start + row_del);
lon =  vlon1(col_start:col_start + col_del, row_start:row_start + row_del);
lat =  vlat1(col_start:col_start + col_del, row_start:row_start + row_del);


imshow(histeq(b3));
title('Satellite data sampling');

% Interactive region selection
while true
    choice = menu('Select:', 'Get region', 'Exit');
    if choice == 2
        break;
    end
    
    [y0, x0] = ginput(1); % Adjust box selection manually
    xw = 3;
    yw = 3;

    xcen = round(x0);
    ycen = round(y0);
    newxw = floor(xw / 2);
    newyw = floor(yw / 2);

    img1 = b1(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img2 = b2(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img3 = b3(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img4 = b4(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img5 = b5(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img6 = b6(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img7 = b7(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img8 = b8(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img9 = b9(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img10 = b10(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img11 = b11(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img12 = b12(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img13 = b13(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img14 = b14(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img15 = b15(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);
    img16 = b16(xcen-newxw:xcen+newxw, ycen-newyw:ycen+newyw);


    fprintf('Band 1:\n');
    disp(img1);
    fprintf('Band 1 mean reflectance:\n');
    disp(mean(img1(:)));
    fprintf('Band 1 standard deviation:\n');
    disp(std(img1(:)));

    fprintf('Band 2:\n');
    disp(img2);
    fprintf('Band 2 mean reflectance:\n');
    disp(mean(img2(:)));
    fprintf('Band 2 standard deviation:\n');
    disp(std(img2(:)));

    fprintf('Band 3:\n');
    disp(img3);
    fprintf('Band 3 mean reflectance:\n');
    disp(mean(img3(:)));
    fprintf('Band 3 standard deviation:\n');
    disp(std(img3(:)));

    fprintf('Band 4:\n');
    disp(img4);
    fprintf('Band 4 mean reflectance:\n');
    disp(mean(img4(:)));
    fprintf('Band 4 standard deviation:\n');
    disp(std(img4(:)));

    fprintf('Band 5:\n');
    disp(img5);
    fprintf('Band 5 mean reflectance:\n');
    disp(mean(img5(:)));
    fprintf('Band 5 standard deviation:\n');
    disp(std(img5(:)));

    fprintf('Band 6:\n');
    disp(img6);
    fprintf('Band 6 mean reflectance:\n');
    disp(mean(img6(:)));
    fprintf('Band 6 standard deviation:\n');
    disp(std(img6(:)));

    fprintf('Band 7:\n');
    disp(img7);
    fprintf('Band 7 mean reflectance:\n');
    disp(mean(img7(:)));
    fprintf('Band 7 standard deviation:\n');
    disp(std(img7(:)));

    fprintf('Band 8:\n');
    disp(img8);
    fprintf('Band 8 mean reflectance:\n');
    disp(mean(img8(:)));
    fprintf('Band 8 standard deviation:\n');
    disp(std(img8(:)));

    fprintf('Band 9:\n');
    disp(img9);
    fprintf('Band 9 mean reflectance:\n');
    disp(mean(img9(:)));
    fprintf('Band 9 standard deviation:\n');
    disp(std(img9(:)));

    fprintf('Band 10:\n');
    disp(img10);
    fprintf('Band 10 mean reflectance:\n');
    disp(mean(img10(:)));
    fprintf('Band 10 standard deviation:\n');
    disp(std(img10(:)));

    fprintf('Band 11:\n');
    disp(img11);
    fprintf('Band 11 mean reflectance:\n');
    disp(mean(img11(:)));
    fprintf('Band 11 standard deviation:\n');
    disp(std(img11(:)));

    fprintf('Band 12:\n');
    disp(img12);
    fprintf('Band 12 mean temperature:\n');
    disp(mean(img12(:)));
    fprintf('Band 12 standard deviation:\n');
    disp(std(img12(:)));

    fprintf('Band 13:\n');
    disp(img13);
    fprintf('Band 13 mean temperature:\n');
    disp(mean(img13(:)));
    fprintf('Band 13 standard deviation:\n');
    disp(std(img13(:)));

    fprintf('Band 14:\n');
    disp(img14);
    fprintf('Band 14 mean temperature:\n');
    disp(mean(img14(:)));
    fprintf('Band 14 standard deviation:\n');
    disp(std(img14(:)));

    fprintf('Band 15:\n');
    disp(img15);
    fprintf('Band 15 mean temperature:\n');
    disp(mean(img15(:)));
    fprintf('Band 15 standard deviation:\n');
    disp(std(img15(:)));

    fprintf('Band 16:\n');
    disp(img16);
    fprintf('Band 16 mean temperature:\n');
    disp(mean(img16(:)));
    fprintf('Band 16 standard deviation:\n');
    disp(std(img16(:)));

    fprintf('LON: %.6f\n', lon(xcen, ycen));
    fprintf('LAT: %.6f\n', lat(xcen, ycen));

    % I changed the label every time I ran the code to obtain all the data
    spectrum = [mean(img1(:)) mean(img2(:)) mean(img3(:)) mean(img4(:)) mean(img5(:)) mean(img6(:)) mean(img7(:)) mean(img8(:)) mean(img9(:)) mean(img10(:)) mean(img11(:)) mean(img12(:)) mean(img13(:)) mean(img14(:)) mean(img15(:)) mean(img16(:))] ;
    SD = [std(img1(:)) std(img2(:)) std(img3(:)) std(img4(:)) std(img5(:)) std(img6(:)) std(img7(:)) std(img8(:)) std(img9(:)) std(img10(:)) std(img11(:)) std(img12(:)) std(img13(:)) std(img14(:)) std(img15(:)) std(img16(:))] ;
    break
end
