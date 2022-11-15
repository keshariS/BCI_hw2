init
set_type('torque')
set_pca(0)
set_proprioceptive(0)
set_test(7)
status

train_folds = 1:9;

train_shoulder = zeros(1,9);
train_elbow = zeros(1,9);
test_shoulder = zeros(1,9);
test_elbow = zeros(1,9);

i=1;
set_train(1)
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=2;
set_train([1,2])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=3;
set_train([1,2,3])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=4;
set_train([1,2,3,4])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=5;
set_train([1,2,3,4,5])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=6;
set_train([1,2,3,4,5,6])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=7;
set_train([1,2,3,4,5,6,8])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=8;
set_train([1,2,3,4,5,6,8,9])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

i=9;
set_train([1,2,3,4,5,6,8,9,10])
train
train_shoulder(i) = parms.net.fvaf_train(1);
train_elbow(i) = parms.net.fvaf_train(2);
test_shoulder(i) = parms.net.fvaf_test(1);
test_elbow(i) = parms.net.fvaf_test(2);

figure
hold on
plot(train_folds,train_shoulder,'LineWidth', 2)
hold on
plot(train_folds,test_shoulder,'LineWidth', 2)
hold on
plot(train_folds,train_elbow,'--','LineWidth', 2)
hold on
plot(train_folds,test_elbow,'--','LineWidth', 2)

xlabel('number of train folds'); 
ylabel('FVAF'); 
legend('train shoulder', 'test shoulder','train elbow','test elbow')
title('Performance')

hold off
