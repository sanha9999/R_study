# 벡터의 생성
B = c(2,3,4,5)
print(B)

# rep(), seq()를 통항 벡터 생성

# seq() : seq(from = 시작하는 숫자, to = 마지막 숫자, by = 증가범위)
x1 = c(1:10)
x1_2 = seq(from = 1, to = 10, by = 1)
x1
x1_2
x2 = seq(from = 1, to = 10, by = 2)


# rep() : rep(반복할 값, 반복할 횟수)
# 1을 10번 반복
y = rep(1, 10)
print(y)
y2 = rep(c(1, 10), 2)
print(y2)
y3 = rep(c(1,10, 11), c(2,2, 3))
print(y3)

# matrix(), data.frame()을 통해 데이터셋 만들기
# matrix(data = 데이터, nrow = 행의수, ncol = 열의 수, byrow = 행/열기준)
MATRIX_R = matrix(
  data = x1,
  ncol=5
)
print(MATRIX_R)

# 데이터 프레임의 생성
DATA_SET = data.frame(
  X1 = x1, # 변수명 = 벡터값
  X1_2 = x1_2,
  X2 = x2,
  y = y
)
print(head(DATA_SET, 4)) # head()는 데이터의 상단 부분을 지정해주는 행만큼 출력해주는 함수이다.

# length(), dim()을 활용한 데이터 형태 파악하기
# length(1차원 벡터)
length(x1)
# dim(행렬 혹은 데이터프레임)
dim(MATRIX_R)
dim(DATA_SET)

# R에서는 괄호에서 [-2]같은 것이 그 값을 빼고 라는 점에서 다른 것 같다.

# 데이터 타입 확인 : str()
Num = c(1:20)
Chr = c("A", "B", "C")
str(Num)
str(Chr)

# as.Date()활용하기
# as.Date(변수, format = "날짜형식")
DATE_0 = "2021-03-24"
DATE_C = as.Date(DATE_0, format="%y-%m-%d")
str(DATE_C)
str(DATE_0)

# as.POSIXct(날짜, format = "날짜형식")
DATE_02 = "2021-03-24 23:23:38"
str(DATE_02)
DATE_P = as.POSIXct(DATE_02, format = "%Y-%m-%d %H:%M:%S")
str(DATE_P)

#format()의 활용
#format(날짜변수, "형식")
format(DATE_P, "%A")
format(DATE_P, "%S")

# as & is를 통해 strings 확인 및 변경하기

# as는 변수 x를 ~로 취급하겠다 라는 의미를 가진다.

x=c(1,2,3,4,5,6,7,8,9,10) 

x1 = as.integer(x)
x2 = as.numeric(x)
x3 = as.factor(x)
x4 = as.character(x)
str(x1)
summary(x1)
str(x2)
summary(x2)
str(x3)
summary(x4)
str(x4)

# is()는 논리문으로써 변수 X가 ~인지 판단하라는 뜻을 가짐.
x=c(1,2,3,4,5,6,7,8,9,10)
y=c("str", 'str2', "str3", "str4")
is.integer(x)
