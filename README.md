# Data Scientist Task

Task description and data for candidates applying to be a Data Scientist in the **Data Science and Analytics Department** at [The Iconic](https://theiconic.com.au).

## Background

A lot of our customers, just like every other online customer, do not provide their age, gender or any other private details while signing up, nothing more than what is needed for being able to transact on site. All of us have done it. Respect privacy!

However, to be able to better tailor our site, branding strategy, marketing, product and most importantly merchandising, we need to have a better handle on the profile of our shopper - based on their implicit behaviour on site and with The Iconic.

This way, the customer gets to keep their privacy and we get to tailor our offerings more suitably to our customer's needs

There are two main ways to gauge customer behaviour

- *purchase behaviour*: what do they buy, how do they buy it, how often, what price points, what discount types and the like
- *visit behaviour*: behaviour on site, the way they browse, the types of interactions and the like

Of course there are a host of such features that can be engineered. But for now, this should suffice. Using the dataset given, can you predict an "inferred" gender for our customers?

## Task

There are three stages to this task:

**Stage 1** : *CLEAN* - Unhash the data using the secret key provided by us, extract it, most importantly clean it and put it in a form you can use - all programatically of course. We have also "intentionally" corrupted two columns in this file - two columns that might look correct but are not correct. They need "some correction" to be useful.

**Stage 2** : *BUILD* - Build a deep learning model(preferably) or any other model that suitably answers this question and predict the inferred gender using the features provided and deriving more featueres at your end. Remember, there is no gender flag, so you are flying blind here.

**Stage 3** : *DELIVER* - Package all your process, findings and code into a reproducible document that can be understood by a business user. A repo of the code branch would be a great thing to have! This **reproducible report**\* must answer the following questions:

1. How did you clean the data and what was wrong with it? Close to 90% of a Data Scientist's job is in cleaning data
2. What are the features you used as-is and which one did you engineer using the given ones? What do they mean in the real world?
3. What does the output look like - how close is the accuracy of the prediction in light of data with labelled flags?
4. What other features and variables can you think of, that can make this process more robust? Can you make a recommendation of top 5 features you'd seek to find apart from the ones given here
5. Summarize your findings in an *executive summary*

## Evaluation

\* Given dependencies and other instructions, we should be able to re-run your source code with the dataset in the same directory and obtain the same results and figures. Popular formats for this include RMarkdown and Jupyter Notebook (formerly IPython).

Also, we have a larger sample set on our end on which we can run your source code and check out the accuracy of your predictions. Think Kaggle :)

## Data

The file(test_data.zip) has been super encrypted - the password to the file is "an unserialized SHA-256 hash" of the keyword you received. Reminder the password to the file is not the password shared with you but the unserialized SHA-256 hash of the password.

The dataset comes from a simulated internal database that we use for assessing user behaviour. Users are randomly sampled to and anonymised, along with programatically shifting all their behavioural metrics by set deviations.

TL;DR - Don't worry, consider this dataset to be as close to reality as possible.

The dataset is currently been put in a JSON format, hashed and then compressed - so all the best! 

**The way to open the file is through the password that you received from us!**

| Column                   | Value   | Description                                                              | 
|--------------------------|---------|--------------------------------------------------------------------------| 
| customer_id              | string  | ID of the customer - super duper hashed                                  | 
| days_since_first_order   | integer | Days since the first order was made                                      | 
| days_since_last_order    | integer | Days since the last order was made                                       | 
| is_newsletter_subscriber | string  | Flag for a newsletter subscriber                                         | 
| orders                   | integer | Number of orders                                                         | 
| items                    | integer | Number of items                                                          | 
| cancels                  | integer | Number of cancellations - when the order is cancelled after being placed | 
| returns                  | integer | Number of returned orders                                                | 
| different_addresses      | integer | Number of times a different billing and shipping address was used        | 
| shipping_addresses       | integer | Number of different shipping addresses used                              | 
| devices                  | integer | Number of unique devices used                                            | 
| vouchers                 | integer | Number of times a voucher was applied                                    | 
| cc_payments              | integer | Number of times a credit card was used for payment                       | 
| paypal_payments          | integer | Number of times PayPal was used for payment                              | 
| afterpay_payments        | integer | Number of times AfterPay was used for payment                            | 
| apple_payments           | integer | Number of times Apple Pay was used for payment                           | 
| female_items             | integer | Number of female items purchased                                         | 
| male_items               | integer | Number of male items purchased                                           | 
| unisex_items             | integer | Number of unisex items purchased                                         | 
| wapp_items               | integer | Number of Women Apparel items purchased                                  | 
| wftw_items               | integer | Number of Women Footwear items purchased                                 | 
| mapp_items               | integer | Number of Men Apparel items purchased                                    | 
| wacc_items               | integer | Number of Women Accessories items purchased                              | 
| macc_items               | integer | Number of Men Accessories items purchased                                | 
| mftw_items               | integer | Number of Men Footwear items purchased                                   | 
| wspt_items               | integer | Number of Women Sport items purchased                                    | 
| mspt_items               | integer | Number of Men Sport items purchased                                      | 
| curvy_items              | integer | Number of Curvy items purchased                                          | 
| sacc_items               | integer | Number of Sport Accessories items purchased                              | 
| msite_orders             | integer | Number of Mobile Site orders                                             | 
| desktop_orders           | integer | Number of Desktop orders                                                 | 
| android_orders           | integer | Number of Android app orders                                             | 
| ios_orders               | integer | Number of iOS app orders                                                 | 
| other_device_orders      | integer | Number of Other device orders                                            | 
| work_orders              | integer | Number of orders shipped to work                                         | 
| home_orders              | integer | Number of orders shipped to home                                         | 
| parcelpoint_orders       | integer | Number of orders shipped to a parcelpoint                                | 
| other_collection_orders  | integer | Number of orders shipped to other collection points                      | 
| average_discount_onoffer | integer | Average discount rate of items typically purchased                       | 
| average_discount_used    | integer | Average discount finally used on top of existing discount                | 
| revenue                  | integer | $ Dollar spent overall per person                                        | 

All the best! Blow us away with your findings and accuracy!
