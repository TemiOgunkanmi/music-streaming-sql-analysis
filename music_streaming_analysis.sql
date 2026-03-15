-- Music Streaming Performance Analysis
-- Temi Ogunkanmi
-- 2026

-- Question 1: What are the total streams per artist
select artist, SUM(streams) as total_streams
from streams
group by artist;

-- Question 2: which artist has the highest total streams?
select artist, SUM(streams) as total_streams
from streams
group by artist 
order by total_streams desc
limit 1;


-- Question 3: What are the average streams per artist?
select artist, AVG(streams) as avg_streams
from streams
group by artist
order by avg_streams desc;

-- Question 4: What are the total streams per country
select country, sum(streams) as total_streams
from streams
group by country 
order by total_streams desc

-- Question 5: Which artist has the highest stream in each country?
select *
from(
	select country, artist, streams,
		Row_number() over 
		(partition by country
		order by streams desc) as rank_by_country
from streams) ranked
where rank_by_country = 1;

-- Question 6: Categorise stream performance
select artist, streams,
	case when streams >= 8 then 'Hit'
	when streams between 5 and 7 then 'Growing'
	else 'Low'
	end as stream_performance
from streams

-- Question 7: Artist share of total streams
select artist, SUM(streams) as total_streams, SUM(streams) * 100/
	SUM(SUM(streams)) over () as percent_of_total
from streams
group by artist
