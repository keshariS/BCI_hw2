pca = 1:50;
%pca = [pca 100:50:960];
n = size(pca,2);

train_shoulder = zeros(1,n);
train_elbow = zeros(1,n);
test_shoulder = zeros(1,n);
test_elbow = zeros(1,n);

for i=1:n
    set_pca(pca(i))
    train
    train_shoulder(i) = parms.net.fvaf_train(1);
    train_elbow(i) = parms.net.fvaf_train(2);
    test_shoulder(i) = parms.net.fvaf_test(1);
    test_elbow(i) = parms.net.fvaf_test(2);
end

figure
hold on
plot(pca,train_shoulder,'LineWidth', 2)
hold on
plot(pca,test_shoulder,'LineWidth', 2)
hold on
plot(pca,train_elbow,'--','LineWidth', 2)
hold on
plot(pca,test_elbow,'--','LineWidth', 2)

xlabel('number of PCA components (set pca value)'); 
ylabel('FVAF'); 
legend('train shoulder', 'test shoulder','train elbow','test elbow')
title('Performance')

hold off