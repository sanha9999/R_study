library(keras)
mnist <- dataset_mnist()

train_images<-mnist$train$x
train_labels<-mnist$train$y
test_images<-mnist$test$x
test_labels<-mnist$test$y

str(train_images)
str(train_labels)

network<-keras_model_sequential() %>% ## 파이프 연산자 ~ 한후
  layer_dense(units = 512, activation="relu", input_shape = c(28*28)) %>%
  layer_dense(units = 10, activation = "softmax")
network

network %>% compile(
  optimizer = "rmsprop",
  loss = "categorical_crossentropy",
  metrics = c("accuracy")
)

train_images<-array_reshape(train_images,c(60000, 28*28))
train_images<-train_images/255

test_images<-array_reshape(test_images,c(10000, 28*28))
test_images<-test_images/255

train_labels<-to_categorical(train_labels)
test_labels<-to_categorical(test_labels)

network %>% fit(train_images, train_labels, epoch=5, batch_size=128)

metrics<-network %>% evaluate(test_images, test_labels)
metrics
network %>% predict_classes(test_images[1:10,])

#시각화 1
c(c(train_images, train_labels), c(test_images, test_labels)) %<-% mnist
digit<-test_images[1,,]
plot(as.raster(digit, max = 255))