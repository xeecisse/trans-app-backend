import { register, driver_loginform, get_availableTrips, get_details, 
  get_driverdetails, get_driverregistration, get_PassengerReg, get_registercar, 
  get_requestride, get_Trips, passenger_loginform, profile,
   Publish_ride, registercar, requestride, Trips, } from "../controllers/transapp";


module.exports = (app) => {
  app.post("/register", register);
  // app.post("/DriverReg", DriverReg);
  app.post("/Publish_ride", Publish_ride);
  app.get("/get_driverregistration", get_driverregistration);
  app.get("/get_PassengerReg", get_PassengerReg);
  // app.post("/ride_registration", ride_registration);
  app.get("/get_driverdetails", get_driverdetails);
   app.get("/get_requestride", get_requestride);
  app.post("/requestride", requestride);
  app.get("/get_details", get_details);
  app.get("/profile", profile);
  app.get("/driver_loginform", driver_loginform);
  app.get("/passenger_loginform", passenger_loginform);
  app.post("/Trips", Trips);
  app.post("/registercar", registercar);
  app.get("/get_registercar", get_registercar);
  app.get("/get_Trips", get_Trips);
  app.post("/get_availableTrips", get_availableTrips);


}