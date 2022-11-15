% set predictors: set_type('X')
% torque, X, dX, ddX, theta, dtheta, ddtheta

init
set_pca(0)
set_proprioceptive(0)
set_train([1,2])
set_test(7)

x = categorical({'Train Shoulder', 'Test Shoulder', 'Train Elbow', 'Test Elbow'});
x = reordercats(x,{'Train Shoulder', 'Test Shoulder', 'Train Elbow', 'Test Elbow'});

n=7;
train_shoulder = zeros(1,n);
train_elbow = zeros(1,n);
test_shoulder = zeros(1,n);
test_elbow = zeros(1,n);

i=1;
set_type('torque')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=2;
set_type('X')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=3;
set_type('dX')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=4;
set_type('ddX')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=5;
set_type('theta')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=6;
set_type('dtheta')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=7;
set_type('ddtheta')
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);


y = [train_shoulder; test_shoulder; train_elbow; test_elbow];
h = bar(x,y)

% set 3 display names for the 3 handles
set(h, {'DisplayName'}, {'torque', 'X', 'dX', 'ddX', 'theta', 'dtheta','ddtheta'}')
ylabel('FVAF');
% Legend will show names for each color
legend() 