USE [Okul]



--Girilen degerden daha büyük vize notlarina sahip verileri getiren fonksiyon:

ALTER function [dbo].[vizepuan](@gelenpuan int)
  returns table
  as
  return (select * from dbo.OgrenciOgretmenDers where Vize>@gelenpuan)



  --cagiralim
  select * from [dbo].[vizepuan](28)





  --where clause kontrolü:
  select * from dbo.OgrenciOgretmenDers as ood
  where ood.Vize>28
