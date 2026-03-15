Music Streaming Performance Analysis

Author: Temi Ogunkanmi
Year: 2026
Tool: SQL (DBeaver)

Overview

This project analyses simulated music streaming data to understand artist performance, stream distribution across countries, and streaming performance segmentation.

Using SQL, the analysis answers several business questions related to:
	•	artist popularity
	•	geographic streaming distribution
	•	performance segmentation
	•	contribution of artists to total streams

The goal is to demonstrate core SQL analytics techniques including aggregations, ranking, window functions, and conditional logic.


Dataset

The dataset simulates music streaming activity across artists and countries.

Streams Table

stream_id	song_id	artist	streams	country
1	101	Amaarae	5	UK
2	102	Kelela	8	USA
3	101	Amaarae	3	UK
4	103	Abra	6	Canada
5	102	Kelela	4	USA
6	103	Abra	7	USA
7	101	Amaarae	2	UK
8	104	SZA	9	USA

Analysis Questions

The project answers the following analytical questions:
	1.	What are the total streams per artist?
	2.	Which artist has the highest total streams?
	3.	What are the average streams per artist?
	4.	Which country generates the most streams?
	5.	Which artist has the highest stream in each country?
	6.	How can stream performance be categorised into performance tiers?
	7.	What percentage of total streams does each artist contribute?


Key Insights
	•	Abra generated the highest total streams in the dataset.
	•	The USA produced the largest number of streams overall.
	•	SZA recorded the highest individual stream value.
	•	Stream segmentation categorised tracks into Hit, Growing, and Low performance tiers.
	•	Window functions allow ranking artists within each country.


SQL Techniques Demonstrated

This project demonstrates several core SQL analytics techniques:
	•	Aggregations (SUM, AVG)
	•	GROUP BY
	•	ORDER BY
	•	LIMIT
	•	Window functions (ROW_NUMBER)
	•	PARTITION BY
	•	Conditional logic using CASE
	•	Contribution analysis using window functions
