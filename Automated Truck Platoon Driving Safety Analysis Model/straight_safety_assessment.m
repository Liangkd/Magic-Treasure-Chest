
clc;
clear;

% Define fleet parameters
num_trucks = [2, 3, 4, 5];
truck_length = 15;
speeds = [10, 15, 20, 25, 30, 35];
headways = [0.3, 0.5, 0.7, 0.9];
lateral_offsets = [0.05 0.10 0.15 0.20 0.25];

% Overtaking vehicle configuration
vA0 = [10 15 20 25 30 35];
vA_max = 45; % The maximum driving speed of vehicle A
ax = 3; %Longitudinal acceleration of overtaking vehicles
xeL = 100; %Longitudinal displacement caused by left lane change
xeR = 100; %Longitudinal displacement caused by right lane change
LA = 4.5; %Overtaking vehicle length
hA = 120; %The distance between car A and car B at the beginning of the left lane change
hB = 120; %The distance between car A and car B at the beginning of the right lane change
ytl = 3.5; %Lateral position of left lane change
ytr = 3.5; %Lateral position of right lane change
ye = 3.5; %Lateral displacement

% Initialize result matrix Truck formation length matrix LB
LB = zeros(length(num_trucks), length(speeds), length(headways));

for i = 1:length(num_trucks)
    for j = 1:length(speeds)
        for k = 1:length(headways)
            num = num_trucks(i);
            speed = speeds(j);
            headway = headways(k);
            
            % Calculate fleet length
            total_length = num * truck_length;
            inter_vehicle_gap = speed * headway;
            total_length = total_length + (num - 1) * inter_vehicle_gap;
            
            % Store results
            LB(i, j, k) = total_length;
        end
    end
end

% Left lane change process
vA1 = zeros(size(vA0)); 
tL = zeros(size(vA0)); 
hA1 = zeros(size(vA0)); 
t1 = zeros(size(vA0));
dA_OLL = zeros(size(vA0));
dB_OLL = zeros(size(vA0));

for i = 1:length(vA0)
    vA1(i) = sqrt(2*ax*xeL+vA0(i)^2);
    tL(i) = (vA1(i)-vA0(i)) / ax; 
    hA1(i) = speeds(i)*tL(i)+hA-xeL; 
    t1(i) =  (vA_max-vA1(i))/ax; 
    dA_OLL(i) = (vA_max^2-vA1(i)^2)/(2*ax); 
    dB_OLL (i) = speeds(i)*t1(i); 
end

% value of tOLL

Final_T = zeros(length(num_trucks), length(speeds), length(headways));
Final_S_A = zeros(length(num_trucks), length(speeds), length(headways));

for i = 1:length(num_trucks)
    for j = 1:length(speeds)
        for k = 1:length(headways)
           Difference = dA_OLL(j) - dB_OLL (j)- hA1(j)- hB - LB(i, j, k); 
           
           if Difference<=0
               t1_V2 = (vA_max-vA1(j))/ax;
               vA2 = vA_max;
               t2_V2 = (((speeds(j)-vA1(j)-0.5*ax)*(vA2-vA1(j))/ax)+(hA1(j)+hB+LA+LB(i, j, k)))/(vA2-speeds(j));
               tR = xeR/vA2;
               hB1 = (vA2-speeds(j))*tR+hB;
               
               T = tL(j)+t1_V2+t2_V2+tR;
               S_A = hA+hB1+LA+LB(i, j, k)+speeds(j)*T;
               Final_T(i, j, k) = T;
               Final_S_A(i, j, k) = S_A;
           else
               syms tOLL;
               eqn = 0.5*ax*tOLL^2+(vA1(j)-speeds(j))*tOLL-(hA1(i)+hB+LA+LB(i, j, k)) == 0;
               tOLL_sol = solve(eqn, tOLL);
               vA2 = vA1(j)+ax*tOLL_sol;
               vA2_final = sqrt(2*ax*xeR+vA2);
               tR = (vA2_final - vA2)/ax;
               hB1 = xeR-speeds(j)*tR+hB;
               
               T = tL(j)+t1_V3+tR;
               S_A = hA+hB1+LA+LB(i, j, k)+speeds(j)*T;
               Final_T(i, j, k) = T;
               Final_S_A(i, j, k) = S_A;
               
           end
        end
    end
end
           
     