# 데이터 불러오기
HR = read.csv('D:\\R-project\\Must Learning with R\\datasets\\HR_comma_sep.csv')
# /로 경로를 구분하거나 \\로 경로를 구분할 수 있다.

# 데이터 윗부분 띄우기
head(HR, 5)
# 데이터의 strings 파악
str(HR)
# 데이터를 요약해서 보기
summary(HR)

# 데이터 strings 변경
summary(HR$left)
HR$Work_accident=as.factor(HR$Work_accident)
HR$left=as.factor(HR$left)
HR$promotion_last_5years=as.factor(HR$promotion_last_5years)
summary(HR$left)
HR$left

# ifelse() 조건에 맞는 값 할당하기
# ifelse(조건, TRUE, FALSE)
HR$satisfaction_level_group_1 = ifelse(HR$satisfaction_level > 0.5, 'High', 'Low')
HR$satisfaction_level_group_1 = as.factor(HR$satisfaction_level_group_1)
summary(HR$satisfaction_level_group_1)
