init
set_type('torque')
set_pca(0)
set_train([1,2])
set_test(7)
set_proprioceptive(0)
status

n=20;
delays = 1:20
train_shoulder = zeros(1,n);
train_elbow = zeros(1,n);
test_shoulder = zeros(1,n);
test_elbow = zeros(1,n);

for i=1:20
    set_delays(1:i)
    train
    train_shoulder(i) = parms.net.fvaf_train(1);
    train_elbow(i) = parms.net.fvaf_train(2);
    test_shoulder(i) = parms.net.fvaf_test(1);
    test_elbow(i) = parms.net.fvaf_test(2);
end

figure
hold on
plot(delays,train_shoulder,'LineWidth', 2)
hold on
plot(delays,test_shoulder,'LineWidth', 2)
hold on
plot(delays,train_elbow,'--','LineWidth', 2)
hold on
plot(delays,test_elbow,'--','LineWidth', 2)

xlabel('delays (neural history)'); 
ylabel('FVAF'); 
legend('train shoulder', 'test shoulder','train elbow','test elbow')
title('Performance with varying delays')

hold off