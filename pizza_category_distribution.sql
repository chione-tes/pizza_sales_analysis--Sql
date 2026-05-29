-- category wise distribution of pizza
select category, count(name) from pizza_types
group by category; 