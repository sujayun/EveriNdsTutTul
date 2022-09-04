var SvrMgrVap = require('express')
var SvrMgrVaj = SvrMgrVap()
SvrMgrVaj.use(SvrMgrVap.json())

SvrMgrVaj.listen(8000, function()
{
    console.log("Server Started and Running ...")
})

//Database connection
var SdbCncVap = require("mysql")
var SdbCncVaj = SdbCncVap.createConnection({
    host: "localhost",
    user: "SdbUsr",
    password: "UsrPwd4Sdb",
    database: "NamSdb"
})

SdbCncVaj.connect((ErrSdbVar)=>
{
    if(ErrSdbVar) throw ErrSdbVar
    
    console.log("Sdb Connected")
})

SvrMgrVaj.get("/prod", (ReqNdsVar, ResNdsVar) =>
{
    var SqlQryVar=`SELECT TtlKol, DtlKol, AmtKol from NamTbl`
    SdbCncVaj.query(SqlQryVar, (ErrSdbVar, ResSdbVar)=>
    {
        if(ErrSdbVar) throw ErrSdbVar
        ResNdsVar.json(ResSdbVar)
    })
})

SvrMgrVaj.get("/prod/:UidVak", (ReqNdsVar, ResNdsVar) =>
{
    var UidVar = ReqNdsVar.params.UidVak
    var SqlQryVar=`SELECT TtlKol, DtlKol, AmtKol from NamTbl where UidKol='${UidVar}'`
    SdbCncVaj.query(SqlQryVar, (ErrSdbVar, ResSdbVar)=>
    {
        if(ErrSdbVar) throw ErrSdbVar
        ResNdsVar.json(ResSdbVar[0])
    })
})

SvrMgrVaj.post("/prod", (ReqNdsVar, ResNdsVar) =>
{
    var NquPrdVar = ReqNdsVar.body
    var SqlQryVar=`INSERT INTO NamTbl (TtlKol, DtlKol, AmtKol) VALUES ("${NquPrdVar.TtlVak}","${NquPrdVar.DtlVak}","${NquPrdVar.AmtVak}")`
    SdbCncVaj.query(SqlQryVar, (ErrSdbVar, ResSdbVar)=>
    {
        if(ErrSdbVar) throw ErrSdbVar
        ResNdsVar.json(ResSdbVar)
    })
})

SvrMgrVaj.put("/prod/:UidVak", (ReqNdsVar, ResNdsVar) =>
{
    var UidVar = ReqNdsVar.params.UidVak
    var UquPrdVar = ReqNdsVar.body
    var SqlQryVar=`UPDATE NamTbl SET TtlKol='${UquPrdVar.TtlVak}', DtlKol='${UquPrdVar.DtlVak}', AmtKol='${UquPrdVar.AmtVak}' WHERE UidKol=${UidVar}`
    SdbCncVaj.query(SqlQryVar, (ErrSdbVar, ResSdbVar)=>
    {
        if(ErrSdbVar) throw ErrSdbVar
        ResNdsVar.json(ResSdbVar)
    })
})

SvrMgrVaj.delete("/prod/:UidVak", (ReqNdsVar, ResNdsVar) =>
{
    var UidVar = ReqNdsVar.params.UidVak
    var SqlQryVar=`DELETE FROM NamTbl WHERE UidKol=${UidVar}`
    SdbCncVaj.query(SqlQryVar, (ErrSdbVar, ResSdbVar)=>
    {
        if(ErrSdbVar) throw ErrSdbVar
        ResNdsVar.json(ResSdbVar)
    })
})