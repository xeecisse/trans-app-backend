import db from "../models";

export const DriverReg = (req, res) => {
  const {
    id = "",
    fullName = "",
    phone = "",
    nin = "",
    licenseNo = "",
    licenseExpiry = "",
    address = "",
    password = "",
  } = req.body;

  db.sequelize
    .query(
      `INSERT INTO driverregistration( 	fullName,licenseNo,licenseExpiryDate,	NIN,currentAddress,phoneNo,passWord) VALUES ('${fullName}','${nin}','${phone}','${password}','${licenseNo}','${address}','${licenseExpiry}')`
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      console.log(err);
      res.status(500).json({ err });
    });
};

export const PassengerReg = (req, res) => {
  const {
    id = "",
    fullName = "",
    phone = "",
    nin = "",
    address = "",
    password = "",
  } = req.body;

  db.sequelize
    .query(
      `INSERT INTO passenger( fullName,NIN,address,phoneNo,password) VALUES ('${fullName}','${nin}','${phone}','${password}','${address}')`
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      console.log(err);
      res.status(500).json({ err });
    });
};

export const loginform = (req, res) => {
  const { id = "", phone = "", password = "" } = req.body;

  db.sequelize
    .query(
      `INSERT INTO loginform( phoneNo,password) VALUES ('${phone}','${password}')`
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      console.log(err);
      res.status(500).json({ err });
    });
};

export const get_driverregistration = (req, res) => {
  db.sequelize
    .query(
      `SELECT *,(fullName,NIN,licenseNo,licenseExpiryDate,currentAddress,phoneNo,passWord) as fullname FROM driverregistration`
    )
    .then((results) => res.json({ success: true, results: results[0] }))
    .catch((err) => {
      console.log(err);
      res.status(500).json({ err });
    });
};
