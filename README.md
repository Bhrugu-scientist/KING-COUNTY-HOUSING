# KING-COUNTY-HOUSING
Exploratory Data Analysis on the data of King County Housing
Link to the tableau visualization - https://public.tableau.com/profile/bhrugu4576#!/vizhome/KingCountyHousing_15940963718050/KingCountyMostExpensiveHouses

- I have taken first 10,000 obsrvations and 22 variables, removed rest for better performance.

- As you can see from the summary the min price of house is $75,000 and maximum price is $ $77,00,000.


![Screenshot (396)](https://user-images.githubusercontent.com/61165633/86880265-5bc31280-c0a1-11ea-96fc-fdf5976272f0.png)


DISTRIBUTION OF PRICE

![Screenshot (394)](https://user-images.githubusercontent.com/61165633/86878745-7b0c7080-c09e-11ea-8700-ddfd2125ec12.png)

- Distribution of price is right skewed or positively skewed. 
- Mean is greater than median. Right tail is longer than the left side.
- This is a result of lower bounds being very low compared to other values in the data  set.
- Thus, we conclude that we have more houses with lower prices in King County.


 DISTRIBUTION OF BEDROOMS
 
![Screenshot (398)](https://user-images.githubusercontent.com/61165633/86879952-d8a1bc80-c0a0-11ea-84a1-c87cdd8b28cb.png)

- There are few outliers here.

DISTRIBUTION OF SQUAREFOOT
![Screenshot (402)](https://user-images.githubusercontent.com/61165633/86880977-5e723780-c0a2-11ea-8e6f-a9c765a7e7af.png)

DISTRIBUTION OF YEAR BUILT

![Screenshot (403)](https://user-images.githubusercontent.com/61165633/86880986-63cf8200-c0a2-11ea-8998-e9ce42821181.png)

DISTRIBUTION OF CONDITION
![Screenshot (404)](https://user-images.githubusercontent.com/61165633/86880995-67630900-c0a2-11ea-9a26-e8e830d84e50.png)



SQFT BY PRICE
![Screenshot (406)](https://user-images.githubusercontent.com/61165633/86881355-06880080-c0a3-11ea-805b-2cf24eeda0fe.png)
- Most of the houses fall between the range of $75,000 i.e. minimum to $250,000 and within 1000 sqft. There are few outliers.




PRICES BY BEDROOMS
![Screenshot (408)](https://user-images.githubusercontent.com/61165633/86881562-739b9600-c0a3-11ea-9289-5b75fa6e3706.png)



MULTIPLE LINEAR REGRESSION MODEL

- Drop data from model, for better analysis dates are refactored into more meaningful data.

![Screenshot (410)](https://user-images.githubusercontent.com/61165633/86881736-d12fe280-c0a3-11ea-9f1c-db03241f5472.png)
- The three aestrick marks (***) shows the hgher amount of significance.
- The biggest coefficient here is waterfront.
- The adjusted R squared is 0.6953. As seen in the output removing insignificant variables
   will increase the efficiency.
- So, we can conclude that number of bathrooms and waterfront are the highest contributors in terms of changing price.

MOST EXPENSIVE HOUSES
- I have taken a cutoff $0.9M and visualized it using the tableau which shows there are many waterfront houses in this range.
![Screenshot (412)](https://user-images.githubusercontent.com/61165633/86882348-fa9d3e00-c0a4-11ea-8cf2-dc15a1d179fe.png)

