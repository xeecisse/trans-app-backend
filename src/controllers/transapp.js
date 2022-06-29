import db from "../models";

export const DriverReg= (req, res) => {
  const {
    id = '',
    fullName= "",
    Age="",
    phone= "",
    nin= "",
    licenseNo= "",
    licenseExpiry= "",
    address= "",
    password= "",
    
  } = req.body;

        db.sequelize
          .query(
            `INSERT INTO driverregistration( 	fullName,Age,licenseNo,licenseExpiryDate,	NIN,currentAddress,phoneNo,passWord) VALUES 
            ('${fullName}','${Age}','${licenseNo}','${licenseExpiry}','${nin}','${address}','${phone}','${password}')`,
          )
          .then((results) => {
          
            res.json({ success: true, results,   });
          })
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      }

      export const PassengerReg= (req, res) => {
        const {
          id = '',
          fullName= "",
          phone= "",
          nin= "",
          address= "",
          password= "",
          
        } = req.body;
      
              db.sequelize
                .query(
                  `INSERT INTO passenger( fullName,NIN,address,phoneNo,password) VALUES ('${fullName}','${nin}','${phone}','${password}','${address}')`,
                )
                .then((results) => {
                
                  res.json({ success: true, results,   });
                })
                .catch((err) => {
                  console.log(err);
                  res.status(500).json({ err });
                });
            }
      
      

export const loginform= (req, res) => {
  const {
    id = '',
    phoneNo='',
    password='',
    
  } = req.body;

        db.sequelize
          .query(
            `INSERT INTO loginform( phoneNo,password) VALUES ('${phoneNo}','${password}')`,
          )
          .then((results) => {
          
            res.json({ success: true, results,   });
          })
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      }
   
export const get_driverregistration= (req, res) => {
  db.sequelize
    .query(
      `SELECT * FROM driverregistration`,
    )
    .then((results) => res.json({ success: true, results: results[0] }))
    .catch((err) => {
      console.log(err);
      res.status(500).json({ err });
    });
};

export const get_PassengerReg= (req, res) => {
  db.sequelize
    .query(
      `SELECT * FROM PassengerReg`,
    )
    .then((results) => res.json({ success: true, results: results[0] }))
    .catch((err) => {
      console.log(err);
      res.status(500).json({ err });
    });
};


export const ride_registration= (req, res) => {
  const {
    id = '',
    ride_manufacturer='',
    ride_year='',
    ride_color='',
    license_plate='',

    
  } = req.body;

        db.sequelize
          .query(
            `INSERT INTO ride_registration(ride_manufacturer,ride_year,ride_color,license_plate) VALUES ('${ride_manufacturer}','${ride_year}','${ride_color}','${license_plate}')`,
          )
          .then((results) => {
          
            res.json({ success: true, results,   });
          })
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      }
      export const get_driverdetails= (req, res) => {
        db.sequelize
          .query(
            `SELECT * FROM driverregistration`,
          )
          .then((results) => res.json({ success: true, results: results[0] }))
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      };
      
      export const get_requestride= (req, res) => {
        db.sequelize
          .query(
            `SELECT * FROM requestride`,
          )
          .then((results) => res.json({ success: true, results: results[0] }))
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      };

      
      export const requestride= (req, res) => {
        const {
          id = '',
       
          trip_from= "",
            trip_to= "",
            date= "",
            time= "",
            numberOfSeat= "",
            nextOfKinPhone= "",
          
        } = req.body;
      
              db.sequelize
                .query(
                  `INSERT INTO requestride(trip_from, trip_to, date, time, numberOfSeat, 
                    nextOfKinPhone) VALUES ('${trip_from}','${trip_to}','${date}',
                  '${time}','${numberOfSeat}','${nextOfKinPhone}')`,
                )
                .then((results) => {
                
                  res.json({ success: true, results,   });
                })
                .catch((err) => {
                  console.log(err);
                  res.status(500).json({ err });
                });
            }
            export const Publish_ride= (req, res) => {
              const {
                id = '',
                CarName="",
                LicencePlate="",
                Caryear="",
                CarColor ="",
                Carmodel="",
                Totalseats="",
                
              } = req.body;
            
                    db.sequelize
                      .query(
                        `INSERT INTO Publish_ride(CarName,LicencePlate,Caryear,CarColor,
                          Carmodel,Totalseats) VALUES ('${CarName}','${LicencePlate}','${Caryear}','${CarColor}','${Carmodel}','${Totalseats}')`,
                      )
                      .then((results) => {
                      
                        res.json({ success: true, results,   });
                      })
                      .catch((err) => {
                        console.log(err);
                        res.status(500).json({ err });
                      });
                  }
                  export const get_details= (req, res) => {
                    db.sequelize
                      .query(
                        `SELECT * FROM requestride`,
                        
                      )
                      .then((ridedeail) => {
                        // res.json({ success: true, results: results[0] })
                        db.sequelize
                        .query(
                          `SELECT * FROM driverregistration`,
                          
                        )
                        .then((Publish) => {
                          // res.json({ success: true, results: results[0] })
                          db.sequelize
                          .query(
                            `SELECT * FROM Publish_ride`,
                            
                          )
                          .then((results) => {
                            res.json({ success: true, ridedeail, Publish, results: results[0] })
                          })
                          .catch((err) => {
                            console.log(err);
                            res.status(500).json({ err });
                          });
                        })
                        .catch((err) => {
                          console.log(err);
                          res.status(500).json({ err });
                        });
                      })
                      .catch((err) => {
                        console.log(err);
                        res.status(500).json({ err });
                      });
                  };

             export const profile= (req, res) => {
        db.sequelize
          .query(
            `SELECT * FROM driverregistration`,
          )
          .then((results) => res.json({ success: true, results: results[0] }))
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      };
