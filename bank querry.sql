SELECT TOP (1000) [ID]
      ,[Age]
      ,[Experience]
      ,[Inc_per_annum]
      ,[Family]
      ,[Exp_per_annum]
      ,[Education]
      ,[Mortages_per_annum]
      ,[Personal_Loan]
      ,[Securities_Account]
      ,[Current_Account]
      ,[Mobile_App]
      ,[Credit_Card]
  FROM [WILLS].[dbo].[Bank_Personal_Loan_Modelling]

 select distinct [Personal_Loan] from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]
 select distinct [Current_Account] from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]             
 select distinct [Securities_Account] from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]
 select distinct [Mobile_App] from [WILLS].[dbo].[Bank_Personal_Loan_Modelling] 
	
SELECT distinct [Education] from [WILLS].[dbo].[Bank_Personal_Loan_Modelling] 
select COUNT([Education])  as Total_Degree_Holders from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]  where Education = 'Degree'
select COUNT([Education])  as Total_Masters_Holders from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]  where Education = 'Masters'
select COUNT([Education])  as Total_Doctors_Holders from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]  where Education = 'Doctors'

select Count(Education) as Total_Customers  from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]


select Education,  Count(*) as Total_Customers, count(*) *100.0 / sum(count(*)) 
over() as percentage from [WILLS].[dbo].[Bank_Personal_Loan_Modelling]
group by Education