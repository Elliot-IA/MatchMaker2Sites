const express = require("express"); 
const app = express();
const path = require("path");
const bodyParser = require("body-parser");

app.use(express.static(path.join(__dirname, ".")));
app.use(bodyParser.json({limit: '200mb'}));
app.use(bodyParser.urlencoded({limit: '200mb', extended: true}));

function c(s){console.log(s)}

console.log("Server Initiated! Working Directory (for server js file):"+path.join(__dirname, "."));

const PORT = process.env.PORT || 5555;
app.listen(PORT, function(){
    console.log("Server started on port 5555");
});

app.get("/", function(req, res){
    res.sendFile(__dirname+"/LookingForAStartup.html");        
});