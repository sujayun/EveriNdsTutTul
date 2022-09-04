var SvrMgrVap = require('express')
var SvrMgrVaj = SvrMgrVap()
SvrMgrVaj.use(SvrMgrVap.json()) //Doubt

SvrMgrVaj.listen(8080, function()
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