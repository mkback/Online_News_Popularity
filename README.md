# Online_News_Project

## Selected Topic: Online News Popularity
#### Important links: 
#### [Link to Google Slides](https://docs.google.com/presentation/d/17hTziRvz6Hiwmy3satv0QTVF8MOqUpNktrlUoLgleyA/edit?usp=sharing)
#### [Link to Tableau](https://public.tableau.com/app/profile/maddie4284/viz/Online_News_Popularity/Online_News?publish=yes)
#### [Link to Original Dataset](https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity)

## Group Members:

* Bailey Lantrip 
* David Gae
* Maddie Back
* Melanie Kelsey 
* Michelle Morrison 
* Rachel Krasner


### Reason we selected it: 

This dataset piqued our interest because of the relevance news and online articles has on our everyday lives. We see articles almost every day on various social media platforms, but which ones are shared the most? Our Machine Learning Model will search for that answer. 

### Description of the data source:

David identified an excellent source from the UCI Machine Learning Repository: [Link](https://archive.ics.uci.edu/ml/datasets/Online+News+Popularity). This is one of their 422 available data sets. It's from 2015 and has about 40,000 rows of data, which will be ideal for training and test sets. 58 of the 61 columns can be used as possible predictive topics, 2 are non-predictive, and 1 column is the goal field of # of shares.

### Project Outline

1. **Introduction to Project**
    * Selected Topic & Why
    * Description of datasource
    * Questions to be Answered in our Presentation
    * Overview of data exploration & analysis 
2. **Database Integration**
    * Created Postgres database hosted by AWS
    * Connected PgAdmin to our RDS instance (news-data)
    * Uploaded our clean data into AWS S3 bucket
    * Started a Spark session to write into Postgres database
    * Using PySpark, we read in our S3 link and loaded into a DataFrame
    * Performed transformations on the DataFrame to match the AWS tables
    * Connected to the database and loaded into the tables
4. **Develop data in Pandas Python file:**
    * Read csv dataset into Pandas Dataframe
    * Remove any unnecessary columns
    * Bucket "shares" column into bins for measuring "popularity." 
    * Split data into Training and Test sets
    * Define our features
    * Train the model
    * Fit the model
    * Make predictions
    * Calculate the confusion matrix
    * Calculate the balanced accuracy score
    * Print the imbalanced classification report
5. **Develop visualizations to tell our story**
    * Graph showing Words in the Title vs. Popularity
    * Graph showing Day Published vs. Popularity
    * Graph showing Polarity vs. Popularity
    * Graph showing Positive/Negative Rate vs. Popularity
    * Graph showing # Images vs. Popularity



### Database Integration:
After opening the orginal csv file and taking a look at the general structure, we determined that a good place to begin is by building an Entity Relational Diagram (ERD) as seen below. From there we created a Postgres database hosted by Amazong Web Services and connected PgAdmin to the RDS instance. After writing a query to create empty tables, we uploaded the data into an AWS S3 bucket. We started a Spark session to write directly into Postgres and read in the S3 link using PySpark. We performed transformations on the DataFram to match the tables in the AWS RDS database and finally connected to the database and loaded the DataFrames into the tables.

<img width="1231" alt="News_ERD" src="https://user-images.githubusercontent.com/87578449/148697873-3c9c78f5-ac67-4dad-a68a-0364703f1f22.png">

### Machine Learning Model

A big part of our preprocessing was deciding if we wanted to keep all original 61 columns. Initially we honed in on about 7 attributes but decided that predictability is better the more attributes we have contributing to the model. From here, we bucketed the "shares" column into "Popular" and "Not Popular" based on the number of shares that fell into the 75th percentile or higher. 

We used the generic "Train Test Split" code to split our 40,000 rows of data into the default test size of 25% (10,000 rows) while the remaining 75% (30,000 rows) are used for training. After testing Logistic Regression and Random Forest, we ultimately decided to go with the Balanced Random Forest Classifier model for our project. This had the highest balanced accuracy score (79%).

<img width="1231" alt="News_ERD" src="https://user-images.githubusercontent.com/87578449/148697873-3c9c78f5-ac67-4dad-a68a-0364703f1f22.png">

#### Data Limitations

We are realizing there might be an element of random chance when it comes to which articles will "go viral" and which will not. You can see from the screen shot below, there is no one predictor that stands out for accurately predicting popularity/shareability. Even when we reran the model with the top 3 and again with the top 7 attributes showing significance, the balanced accuracy score went down.

![image](https://user-images.githubusercontent.com/87578449/149640612-42e188c6-4b98-4b68-a5ad-aafcc0d5639f.png)


