 use project ; _          
 select * from vehi_state;
  select * from vechi_makers;
 select * from dim_date;
select vechi_makers.maker,vechi_makers.vehicle_category,dim_date.fiscal_year from vechi_makers inner join vehi_state on vechi_makers.date=vehi_state.date join dim_date on vechi_makers.date=dim_date.date where fiscal_year in(2023,2024) order by total_vehicles_sold desc limit 3;
select vechi_makers.maker,vechi_makers.vehicle_category,dim_date.fiscal_year from vechi_makers  join vehi_state on vechi_makers.date=vehi_state.date  join dim_date on vechi_makers.date=dim_date.date where fiscal_year in(2023,2024) order by total_vehicles_sold asc limit 3;
select * from pent_rate;
select state,(electric_vehicles_sold/total_vehicles_sold*100) as penentration_rate from pent_rate where(vehicle_category="4-wheelers") order by penentration_rate desc limit 5;
select state,(electric_vehicles_sold/total_vehicles_sold*100) as penentration_rate from pent_rate where(vehicle_category="2-wheelers") order by penentration_rate desc limit 5;
select * from negative limit 5;
select vechi_makers.vehicle_category,vechi_makers.maker,dim_date.fiscal_year,dim_date.quarter from vechi_makers inner join dim_date on vechi_makers.date=dim_date.date where vehicle_category='4-wheelers' order by electric_vehicles_sold desc limit 5;
select * from coco order by penentration_rate desc limit 3;
select * from country1 order by penentration_rate desc limit 3;
select date from vehi_state order by electric_vehicles_sold desc limit 5;
select date from vehi_state order by electric_vehicles_sold asc limit 5;
select vehicle_category,((sum(case when fiscal_year="2024" then electric_vehicles_sold*"85,000" else 0 end)/sum(case when fiscal_year="2022" then electric_vehicles_sold*"15,00,00" else 0 end))-1)*100 as  growth_rate_2022_2024,((sum(case when fiscal_year="2024" then electric_vehicles_sold*"85,000" else 0 end)/sum(case when fiscal_year="2023" then electric_vehicles_sold*"15,00,00" else 0 end))-1)*100 as  growth_rate_2023_2024 from pent_rate group by vehicle_category;
select* from grow;
