CREATE PROCEDURE CountMoviesinCategory
as
select Name as	Category,COUNT(*) as count 
from Movies
inner join MovieCategories
on CategoryId=MovieCategories.Id 
group by Name

