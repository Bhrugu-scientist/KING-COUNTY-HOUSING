
## Importing Data

king_county <- read.csv(file.choose(),header = T)

str(king_county)
ncol(king_county)
nrow(king_county)

##Dropping Data

king_county <- king_county[,c(1,3:21)]
##Data is reduced for better performance

## Taking smaller set of the dataset.

king_county <- king_county[1:10000,]
## Only first 10,000 rows of data are taken

attach(king_county)
## data is added to thr R environment



## STEP 1 - DATA EXPLORATION

summary(king_county)

## 100k

prices_in_100k <- king_county$price / 100000
prices_in_100k

## Visualization of Price

price_distrib <- enframe(rchisq(king_county$price,3))

p <- ggplot(price_distrib, aes(x = value))

p + geom_histogram(fill="blue", 
                   colour="red", 
                   alpha = 0.25, 
                   binwidth=0.5) +
  geom_density(aes(y=0.5*..count..), colour="black", adjust=4)



## BEDROOM'S DISTRIBUTION
par(bg = 'grey')
hist(king_county$bedrooms,
     main = 'Distribution of Bedrooms',
     xlab = 'Number of bedrooms',
     ylab = 'Frequency',
     col = 'dark blue')

### Distribution of squarefoot

par(bg = 'grey')
hist(king_county$sqft_living,
     main = 'Distribution of Squarefoot',
     xlab = 'Number of bedrooms',
     ylab = 'Frequency',
     col = 'dark blue')

### Histogram of construction year

par(bg = 'pink')
hist(king_county$yr_built,
     main = 'Distribution of year built',
     xlab = 'Number of bedrooms',
     ylab = 'Frequency',
     col = 'green')


## DISTRIBUTION CONDITION
par(bg = 'grey')
hist(king_county$condition,
     main = 'Distribution of Condition',
     xlab = 'House Condition',
     ylab = 'Frequency',
     col = 'yellow')

squarefeet <- king_county$sqft_lot15 /100

## Price by squarefeet
par(bg = 'grey')
plot(x = squarefeet,
     y = prices_in_100k,
     xlab = 'Square Feet',
     ylab = 'Price in 100k',
     col = 'red')

## Prices by bedroom

plot(prices_in_100k,
     data = king_county,
     main = 'Price by Bedrooms',
     col = 'Purple',
     xlab = 'Price in $100k',
     ylab = 'Number of Bedrooms'
     )


### STEP 2 - MULTIPLE LINEAR REGRESSION MODEL

## Drop data from model, for better analysis dates are refactored into more meaningful data

king_county_model <- lm(price ~., data = king_county)

king_county_model


## ROUNDING COEFFICIETS

co <- summary(king_county_model)$coefficients
co
co <- round(co, 4)
co
summary(king_county_model)


plot(price~ yr_built,
     data = king_county,
     cex = .2,
     col = 'red',
     main = 'Price By Year',
     xlab = 'Year',
     ylab = 'Price of house in $100k'
     )





pricebydecade <- data.frame(Price = king_county$price,Decade = king_county$yr_built)


min(pricebydecade$Decade)

max(pricebydecade$Decade)

hist(pricebydecade$Decade,
     bins = 10,
     main = 'Distribution of houses by year',
     xlab = 'Decade  Built', ylab = 'Count',
     col = c('Orange')
     )




