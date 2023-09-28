let express = require("express");
let port = process.env.PORT || 5000;

let app = express();
let path = require('path');
/*
app.get("/", (req, res) => {
    res.status(200).json({message: "Welcome on my API in NodeJS"});
});*/


//app.use(express.static(path.join(__dirname + '/public')));



app.use("/", (req, res) =>{
    res.status(200).send("On root")})

const routes = require("./routes/routes.js")

app.use("/routes", routes)


app.use((req, res) => {
    res.status(404).send('<H1>Error 404 : Ressource not found !');
});

app.listen(port, () => {
    console.log("Server started successfully")
    
});