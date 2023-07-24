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
select 