
----------------------------------------------
-- Normal FFO Cursor
----------------------------------------------

declare @p1 int
set @p1=NULL
declare @p2 int
set @p2=0
declare @p5 int
--
-- Fast Forward(16)+Parameterized(4096)+AutoFetch(8192)+AutoClose(16384)
--
set @p5=16+4096+8192+16384
declare @p6 int
set @p6=8193
declare @p7 int
--
-- Number of Rows for AutoFetch. 
-- This is calculated by Maximum Buffer Size (24K default) / Row Length
--
set @p7=4
exec sp_cursorprepexec @p1 output,@p2 output,N'@P1 nvarchar(5),@P2 nvarchar(21)',N'SELECT A.SALESID,A.RECID FROM SALESLINE A WHERE ((DATAAREAID=@P1) AND (SALESID>@P2))',@p5 output,@p6 output,@p7 output,N'ceu',N'SO-100004'
-- @p2 contains cursor handle for fetch call
exec sp_cursorfetch @p2,2,1,@p7



GO
----------------------------------------------
-- FFO Cursor Retrieving Text or Image Column
----------------------------------------------
declare @p1 int
set @p1=NULL
declare @p2 int
set @p2=0
declare @p5 int
--
-- Fast Forward(16)+Parameterized(4096)+AutoClose(16384)
-- 
set @p5=16+4096+16384
set @p5=20496
declare @p6 int
set @p6=8193
declare @p7 int
-- No Autofetch
set @p7=0
exec sp_cursorprepexec @p1 output,@p2 output,N'@P1 nvarchar(5),@P2 nvarchar(21)',N'SELECT A.SALESID,A.LINENUM,A.ITEMID,A.SALESSTATUS,A.LEDGERACCOUNT,A.NAME,A.EXTERNALITEMID,A.TAXGROUP,A.QTYORDERED,A.SALESDELIVERNOW,A.REMAINSALESPHYSICAL,A.REMAINSALESFINANCIAL,A.COSTPRICE,A.SALESPRICE,A.CURRENCYCODE,A.LINEPERCENT,A.LINEDISC,A.LINEAMOUNT,A.CONFIRMEDDLV,A.RESERVATION,A.SALESGROUP,A.SALESUNIT,A.DIMENSION,A.DIMENSION2_,A.DIMENSION3_,A.PRICEUNIT,A.PROJTRANSID,A.INVENTTRANSID,A.CUSTGROUP,A.CUSTACCOUNT,A.DEL_INTERCOMPANYRETURNACTIONID,A.SALESQTY,A.SALESMARKUP,A.INVENTDELIVERNOW,A.MULTILNDISC,A.MULTILNPERCENT,A.SALESTYPE,A.BLOCKED,A.COMPLETE,A.REMAININVENTPHYSICAL,A.TRANSACTIONCODE,A.COUNTYORIGDEST,A.DEL_INTERCOMPANYRETURNACTION41,A.TAXITEMGROUP,A.TAXAUTOGENERATED,A.UNDERDELIVERYPCT,A.OVERDELIVERYPCT,A.BARCODE,A.BARCODETYPE,A.INVENTREFTRANSID,A.INVENTREFTYPE,A.INVENTREFID,A.INTERCOMPANYORIGIN,A.DEL_DELIVERYDATECONTROL,A.ITEMBOMID,A.ITEMROUTEID,A.LINEHEADER,A.SCRAP,A.DEL_RETURNACTIONID,A.DLVMODE,A.INVENTTRANSIDRETURN,A.PROJCATEGORYID,A.PROJID,A.INVENTDIMID,A.TRANSPORT,A.STATPROCID,A.DEL_ESTIMATEGROSS,A.DEL_ESTIMATENET,A.PORT,A.PROJLINEPROPERTYID,A.RECEIPTDATEREQUESTED,A.CUSTOMERLINENUM,A.PACKINGUNITQTY,A.PACKINGUNIT,A.INTERCOMPANYINVENTTRANSID,A.REMAININVENTFINANCIAL,A.DELIVERYADDRESS,A.DELIVERYNAME,A.DELIVERYSTREET,A.DELIVERYZIPCODE,A.DELIVERYCITY,A.DELIVERYCOUNTY,A.DELIVERYSTATE,A.DELIVERYCOUNTRYREGIONID,A.DELIVERYTYPE,A.CUSTOMERREF,A.PURCHORDERFORMNUM,A.RECEIPTDATECONFIRMED,A.BLANKETREFTRANSID,A.STATTRIANGULARDEAL,A.SHIPPINGDATEREQUESTED,A.SHIPPINGDATECONFIRMED,A.ADDRESSREFRECID,A.ADDRESSREFTABLEID,A.SERVICEORDERID,A.ITEMTAGGING,A.CASETAGGING,A.PALLETTAGGING,A.EINVOICEACCOUNTCODE,A.SHIPCARRIERID,A.SHIPCARRIERACCOUNT,A.SHIPCARRIERDLVTYPE,A.SHIPCARRIERACCOUNTCODE,A.DELIVERYDATECONTROLTYPE,A.ATPINCLPLANNEDORDERS,A.ATPTIMEFENCE,A.ACTIVITYNUMBER,A.RETURNALLOWRESERVATION,A.ITEMREPLACED,A.RETURNDEADLINE,A.EXPECTEDRETQTY,A.RETURNSTATUS,A.RETURNARRIVALDATE,A.RETURNCLOSEDDATE,A.RETURNDISPOSITIONCODEID,A.ITEMPBAID,A.MOBSALESCAMPAIGNID,A.CREATEDDATETIME,A.RECVERSION,A.RECID,A.DEL_CORRECTIVEREASON FROM SALESLINE A WHERE ((DATAAREAID=@P1) AND (SALESID>@P2))',@p5 output,@p6 output,@p7 output,N'ceu',N'SO-100004'
exec sp_cursorfetch @p2,2,1,@p7

GO
----------------------------------------------
-- Pessimistic Lock Cursor
-- This will change soon to be FFO
----------------------------------------------
declare @p1 int
set @p1=NULL
declare @p2 int
set @p2=0
declare @p5 int
--
-- Dynamic(2)+ Parameterized(4096)
--
set @p5=2+4096
declare @p6 int
set @p6=8193
declare @p7 int
-- No Autofetch
set @p7=0
exec sp_cursorprepexec @p1 output,@p2 output,N'@P1 nvarchar(5),@P2 nvarchar(21)',N'SELECT A.SALESID,A.LINENUM,A.ITEMID,A.SALESSTATUS,A.LEDGERACCOUNT,A.NAME,A.EXTERNALITEMID,A.TAXGROUP,A.QTYORDERED,A.SALESDELIVERNOW,A.REMAINSALESPHYSICAL,A.REMAINSALESFINANCIAL,A.COSTPRICE,A.SALESPRICE,A.CURRENCYCODE,A.LINEPERCENT,A.LINEDISC,A.LINEAMOUNT,A.CONFIRMEDDLV,A.RESERVATION,A.SALESGROUP,A.SALESUNIT,A.DIMENSION,A.DIMENSION2_,A.DIMENSION3_,A.PRICEUNIT,A.PROJTRANSID,A.INVENTTRANSID,A.CUSTGROUP,A.CUSTACCOUNT,A.DEL_INTERCOMPANYRETURNACTIONID,A.SALESQTY,A.SALESMARKUP,A.INVENTDELIVERNOW,A.MULTILNDISC,A.MULTILNPERCENT,A.SALESTYPE,A.BLOCKED,A.COMPLETE,A.REMAININVENTPHYSICAL,A.TRANSACTIONCODE,A.COUNTYORIGDEST,A.DEL_INTERCOMPANYRETURNACTION41,A.TAXITEMGROUP,A.TAXAUTOGENERATED,A.UNDERDELIVERYPCT,A.OVERDELIVERYPCT,A.BARCODE,A.BARCODETYPE,A.INVENTREFTRANSID,A.INVENTREFTYPE,A.INVENTREFID,A.INTERCOMPANYORIGIN,A.DEL_DELIVERYDATECONTROL,A.ITEMBOMID,A.ITEMROUTEID,A.LINEHEADER,A.SCRAP,A.DEL_RETURNACTIONID,A.DLVMODE,A.INVENTTRANSIDRETURN,A.PROJCATEGORYID,A.PROJID,A.INVENTDIMID,A.TRANSPORT,A.STATPROCID,A.DEL_ESTIMATEGROSS,A.DEL_ESTIMATENET,A.PORT,A.PROJLINEPROPERTYID,A.RECEIPTDATEREQUESTED,A.CUSTOMERLINENUM,A.PACKINGUNITQTY,A.PACKINGUNIT,A.INTERCOMPANYINVENTTRANSID,A.REMAININVENTFINANCIAL,A.DELIVERYADDRESS,A.DELIVERYNAME,A.DELIVERYSTREET,A.DELIVERYZIPCODE,A.DELIVERYCITY,A.DELIVERYCOUNTY,A.DELIVERYSTATE,A.DELIVERYCOUNTRYREGIONID,A.DELIVERYTYPE,A.CUSTOMERREF,A.PURCHORDERFORMNUM,A.RECEIPTDATECONFIRMED,A.BLANKETREFTRANSID,A.STATTRIANGULARDEAL,A.SHIPPINGDATEREQUESTED,A.SHIPPINGDATECONFIRMED,A.ADDRESSREFRECID,A.ADDRESSREFTABLEID,A.SERVICEORDERID,A.ITEMTAGGING,A.CASETAGGING,A.PALLETTAGGING,A.EINVOICEACCOUNTCODE,A.SHIPCARRIERID,A.SHIPCARRIERACCOUNT,A.SHIPCARRIERDLVTYPE,A.SHIPCARRIERACCOUNTCODE,A.DELIVERYDATECONTROLTYPE,A.ATPINCLPLANNEDORDERS,A.ATPTIMEFENCE,A.ACTIVITYNUMBER,A.RETURNALLOWRESERVATION,A.ITEMREPLACED,A.RETURNDEADLINE,A.EXPECTEDRETQTY,A.RETURNSTATUS,A.RETURNARRIVALDATE,A.RETURNCLOSEDDATE,A.RETURNDISPOSITIONCODEID,A.ITEMPBAID,A.MOBSALESCAMPAIGNID,A.CREATEDDATETIME,A.RECVERSION,A.RECID,A.DEL_CORRECTIVEREASON FROM SALESLINE A WITH( UPDLOCK) WHERE ((DATAAREAID=@P1) AND (SALESID=@P2))',@p5 output,@p6 output,@p7 output,N'ceu',N'SO-100004'
exec sp_cursorfetch @p2,2,1,1


GO
----------------------------------------------
-- Typical Cursor for Form
----------------------------------------------

declare @p1 int
set @p1=NULL
declare @p2 int
set @p2=0
declare @p5 int
--
-- Fast Forward(16)+Parameterized(4096)+AutoFetch(8192)+AutoClose(16384)
--
set @p5=16+4096+8192+16384
declare @p6 int
set @p6=8193
declare @p7 int

set @p7=4
exec sp_cursorprepexec @p1 output,@p2 output,N'@P1 nvarchar(5),@P2 nvarchar(21)',N'SELECT A.SALESID,A.RECID FROM SALESLINE A WHERE ((DATAAREAID=@P1) AND (SALESID>@P2)) ORDER BY DATAAREAID, SALESID OPTION(FAST 1)',@p5 output,@p6 output,@p7 output,N'ceu',N'SO-100004'
-- For a form we don't fetch the whole result set at a time.
-- We pass 20 rows back to a grid, and fetch ahead assuming user will scroll forward.
-- So to simulate this multiple sp_cursorfetch calls may be needed.
exec sp_cursorfetch @p2,2,1,@p7
exec sp_cursorfetch @p2,2,1,@p7
exec sp_cursorfetch @p2,2,1,@p7
exec sp_cursorfetch @p2,2,1,@p7