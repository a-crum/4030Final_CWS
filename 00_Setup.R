# 1. Load the GSS dataset.
# SDS 4030 Final Project
# Shared Setup

# 1. Load the GSS dataset.
gss = read.table("gss.txt", header = TRUE)

# 2. Define qualitative variables.
gss$Sex = factor(gss$Sex)
gss$Happy = factor(gss$Happy)
gss$Marital = factor(gss$Marital)
gss$Work = factor(gss$Work)
gss$Zodiac = factor(gss$Zodiac)

str(gss)

# 3. Examine the dataset.
head(gss)
str(gss)
summary(gss)
colSums(is.na(gss))


# 4. Fit the baseline multiple linear regression.

full = lm(Income ~ Age + Educ + Hours + TVHours +MEduc + FEduc + Sibs, data = gss)

summary(full)