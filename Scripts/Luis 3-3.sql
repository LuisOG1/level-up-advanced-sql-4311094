-- subquery seleccting fields from inner table with multiple joins
select salesId,
        inventoryId,
        EngineType
from (select s.salesId,
            i.inventoryId,
            m.modelId,
            m.EngineType
      from sales s 
      join inventory i on s.inventoryId=i.inventoryId
      join model m on i.modelId=m.modelId) as InventoryDetail
where EngineType='Electric'

--Subquery with single join selections and subquery in where clause
select s.salesId,
        s.salesAmount,
        i.year as CarYear,
        i.isAvailable
from sales s
join inventory i on s.inventoryId=i.inventoryId
where i.modelId in (select modelId
                    from model
                    where EngineType='Electric')
order by s.salesAmount desc