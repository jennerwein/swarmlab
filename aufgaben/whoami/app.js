// Use the web application framework "express" 
let app = require("express")();
// Set the view engine to ejs
app.set("view engine", "ejs");
app.set("templates", __dirname + "/templates");
// Import os and ip modules, required to get the hostname and the IP-Address of the current machine
let os = require('os');
let ip = require('ip');
// Get the hostname from "os" module
let hostName = os.hostname();
// Get the IP-Address from "os" module
let hostIp = ip.address();
// The color will be based on the hostname defined 
let color = hostName.substr(0, 5);
// Send the IP, Hostname and Color to the template generator ejs
app.get('/', (req, res) => {res.render("index", { hostName: hostName, hostIp: hostIp, color: color }); });
// Listen to the Server in 8010 Port
app.listen(8010);
