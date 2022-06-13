import {
  DriverReg,
  get_driverregistration,
  loginform,
  PassengerReg,
} from "../controllers/transapp";

module.exports = (app) => {
  app.post("/login", loginform);
  app.post("/PassengerReg", PassengerReg);
  app.post("/DriverReg", DriverReg);
  app.get("/get_driverregistration", get_driverregistration);
};
