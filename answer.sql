select * from constituency_details;
select * from constituencywise_results;
select * from partywise_results
select *  from states;
select * from statewise_results;

-- answr1  Count the total number of candidates in the dataset
select count(*) as total_candidates
from constituency_details;

-- answer 2 Find the total number of constituencies

select COUNT(distinct constituency_id) as total_constitution
from constituency_details;

-- answer 3  Count the number of political parties 
select count(*) as total_political_parties
from partywise_results;

--answer 4 Count the total number of states in the dataset

select count(*) as total_no_states
from states;
-- answer 5 Find the top 10 candidates who received the highest votes
SELECT TOP 10 Winning_Candidate,Total_Votes
FROM constituencywise_results
ORDER BY Total_Votes DESC;
-- anser 6  Find the candidate with the highest vote percentage

select top 1 candidate,percent_votes
from constituency_details
order by percent_votes desc;

-- answer 7  Find parties that won the most seats
select party ,won
from partywise_results
order by won desc;

-- answer 8  Calculate the total votes received by each candidate
SELECT   Winning_Candidate, SUM( Total_Votes) AS total_votes
FROM constituencywise_results
GROUP BY Winning_Candidate
ORDER BY total_votes DESC;


-- answer 9  Find the average votes received per candidate
select avg(total_votes) as avg_votes
from constituency_details;

--  answer 10  Find candidates who received more than 100000 votes

select candidate,total_votes
from constituency_details
where total_votes >100000
order by total_votes desc;

-- answer 11  Find constituencies with the highest total votes

select constituency_id,sum(total_votes) as total_votes
from constituency_details
group by constituency_id
order by total_votes desc;
-- answer 12 Join candidate details with constituency information

select c.candidate,c.total_votes,r.parliament_constituency
from constituency_details c join constituencywise_results r
on c.constituency_id=r.Constituency_ID;

--  answer 13  Find the winning party for each constituency

select r.parliament_Constituency,p.party
from constituencywise_results r join partywise_results p
on r.Party_ID=p.Party_ID;

-- answer 14  Count number of constituencies per state
select state,count(*) as total_constaituencies
from statewise_results
group by state
order by total_constaituencies desc;

-- answer 15  Calculate total votes in each constituency
select constituency_id,sum(total_votes) as total_votes
from constituency_details
group by constituency_id;

-- answer 16  Find the top candidate in each constituency 
with cte1 as
(
select  distinct (candidate),constituency_id,total_votes,
DENSE_RANK()over (partition by constituency_id order by total_votes desc) as drnk
from constituency_details
)
select candidate,constituency_id,total_votes
from cte1
where drnk =1;

 -- answer 17 Rank candidates based on vote count
 SELECT candidate,total_votes,
      
       dense_RANK() OVER(ORDER BY total_votes DESC) AS vote_rank
FROM constituency_details;
-- amswer 18  Find the top 3 candidates in each constituency

SELECT *
FROM (
    SELECT  distinct candidate,
           constituency_id,
           total_votes,
           DENSE_RANK() OVER(PARTITION BY constituency_id
                             ORDER BY total_votes DESC) AS rank_position
    FROM constituency_details
) ranked
WHERE rank_position <= 3;

-- answer 19 Compare vote difference using LAG function
select * from constituency_details;

SELECT candidate,
       constituency_id,
       total_votes,
       LAG( total_votes) OVER(PARTITION BY constituency_id
                       ORDER BY total_votes DESC) AS previous_votes
FROM constituency_details;

-- 20 Find candidates with vote share above 50%
SELECT candidate,percent_votes 
FROM constituency_details
WHERE percent_votes > 50;
-----------------------------------------------------------------------------------