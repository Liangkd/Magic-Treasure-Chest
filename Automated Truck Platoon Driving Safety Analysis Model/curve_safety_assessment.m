clc;
clear;

% Parameter configuration
TKP = 200; % The position of the rear of the truck
VKP = 210; % The position of the rear end of the overtaking vehicle
R = 3300; % General circular curve radius
WL1 = 3.5; % Inner lane width
WL2 = 3.5; % Outer lane width
VP = 1.75; % The distance from the centerline to the lane line of overtaking vehicles
VD1 = 0.22; 
VD2 = 0.45;
TP = 1.75; 
TW = 2.60; 
TL = 15.0; % Truck length
OW = 1.80; % Overtaking vehicle width

% Define fleet parameters
num_trucks = [2, 3, 4, 5];
truck_length = 15;
speeds = [10, 15, 20, 25, 30, 35];
headways = [0.3, 0.5, 0.7, 0.9];
lateral_offsets = [0.00 0.05 0.10 0.15 0.20 0.25];

Final_ASD_gen = zeros(length(num_trucks), length(speeds), length(headways), length(lateral_offsets));
Final_ASD_max = zeros(length(num_trucks), length(speeds), length(headways), length(lateral_offsets));
Final_ASD_dif = zeros(length(num_trucks), length(speeds), length(headways), length(lateral_offsets));

for i = 1:length(num_trucks)
    for j = 1:length(speeds)
        for k = 1:length(headways)
            for l = 1:length(lateral_offsets)

                lateral = (num_trucks(i)-1)*lateral_offsets(l)*0.5;
                G = speeds(j) * headways(k);

                % General available sight distance calculation process
                a_value = ((VKP-TKP)*180)/(pi*(R+WL1+WL2)); 
                theta = atan(a_value) * 180 / pi;
                a = theta;

                x1 = sqrt(((R + WL1 + VP + VD1).^2)./(1+a_value.^2));
                y1 = a_value.*x1;

                x0 = [3000, 1000]; % Define initial value
                options = optimoptions('fsolve', 'Display', 'off'); 
                [sol_one, fval_one, exitflag_one] = fsolve(@(x) equations_V1(x, R, TP, TW, VD1, WL1, VP, x1, y1, lateral), x0, options);

                x2 = sol_one(1);
                y2 = sol_one(2);

                options = optimoptions('fsolve', 'Display', 'off'); 
                [sol_two, fval_two, exitflag_two] = fsolve(@(x) equations_V2(x, R, x2, y2, TW, WL1, VP, x1, y1), x0, options);

                x3 = sol_two(1);
                y3 = sol_two(2);

                b_radians = atan2(y3, x3);
                b = rad2deg(b_radians);

                ASD_gen = (2*pi*(R+WL1+VP)*(b-a))/360 - VD2;

                % Maximum available sight distance calculation process
                a1 = (TKP*180)/(pi*(R+WL1+WL2))+TL*180/(R+TP+lateral)*pi;
                a1_angle_radians = deg2rad(a1);
                a1_value = tan(a1_angle_radians);

                x4 = sqrt(((R + TP + lateral + 0.5*TW).^2)./(1+a1_value.^2));
                y4 = a1_value.*x4;

                a2 = (TKP*180)/(pi*(R+WL1+WL2))+((TL+G)*180)/(R+TP+lateral)*pi;
                a2_angle_radians = deg2rad(a2);
                a2_value = tan(a2_angle_radians);

                x5 = sqrt(((R + TP + lateral + 0.5*TW).^2)./(1+a2_value.^2));
                y5 = a2_value.*x5;

                x1 = [3000, 200]; % Define initial value
                options = optimoptions('fsolve', 'Display', 'off'); 
                [sol_three, fval_three, exitflag_three] = fsolve(@(x) equations_V3(x, R, VP, VD1, WL1, x5, y5, x4, y4), x1, options);

                x6 = sol_three(1);
                y6 = sol_three(2);

                options = optimoptions('fsolve', 'Display', 'off'); 
                [sol_four, fval_four, exitflag_four] = fsolve(@(x) equations_V4(x, R, VP, OW, WL1, x5, y5, x4, y4), x0, options);

                x7 = sol_four(1);
                y7 = sol_four(2);

                angle_ax6 = (y6*180)/(pi*x6);
                angle_ax7 = (y7*180)/(pi*x7);

                ASD_max = (2*pi*(R+WL1+VP)*(angle_ax7-angle_ax6))/360 - VD2;

                % difference of available sight distance
                ASD_dif = ASD_max - ASD_gen;

                Final_ASD_gen(i, j, k, l) = ASD_gen;
                Final_ASD_max(i, j, k, l) = ASD_max;
                Final_ASD_dif(i, j, k, l) = ASD_dif;

            end
        end
    end
end




