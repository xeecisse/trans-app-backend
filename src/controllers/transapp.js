import db from "../models";

export const register= (req, res) => {
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
    account_type=""
  } = req.body;

        db.sequelize
          .query(
            `INSERT INTO registration( 	fullName,Age,licenseNo,licenseExpiryDate,	NIN,currentAddress,phoneNo,passWord,account_type) VALUES 
            ('${fullName}','${Age}','${licenseNo}','${licenseExpiry}','${nin}','${address}','${phone}','${password}','${account_type}')`,
          )
          .then((results) => {
          
            res.json({ success: true, results,   });
          })
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      }  

  export const  driver_loginform= (req, res) => {
    db.sequelize
      .query(
        `SELECT * FROM registration`,
      )
      .then((results) => res.json({ success: true, results: results[0] }))
      .catch((err) => {
        console.log(err);
        res.status(500).json({ err });
      });
  };

  export const  passenger_loginform= (req, res) => {
    db.sequelize
      .query(
        `SELECT * FROM passenger`,
      )
      .then((results) => res.json({ success: true, results: results[0] }))
      .catch((err) => {
        console.log(err);
        res.status(500).json({ err });
      });
  };
   
export const get_driverregistration= (req, res) => {
  db.sequelize
    .query(
      `SELECT * FROM registration`,
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


export const registercar= (req, res) => {
  const {
    carName= "",
    carModel= "",
    carImage= "",
    carSeats= "",
    carColor= "",
    carYear= "",
    Platenumber= "",
    driver_id="",
  } = req.body;

        db.sequelize
          .query(
            `INSERT INTO registercar(carName,carModel,carImage,carSeats,carColor,carYear,Platenumber,driver_id) 
            VALUES ('${carName}','${carModel}','${carImage}','${carSeats}','${carColor}','${carYear}',
            '${Platenumber}',"${driver_id}")`,
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
            `SELECT * FROM registration`,
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
      export const get_requestride_user= (req, res) => {
        const user_id = req.query.user_id
        db.sequelize
          .query(
            `SELECT t.Trip_from, t.Trip_to, t.date, t.time, t.availableSeats, t.price, re.Trip_id, dr.id, dr.fullName, dr.Age, dr.phoneNo, dr.currentAddress, c.carName, c.carModel,c.carSeats,c.carColor,c.Platenumber,c.carYear FROM trip t JOIN requestride re ON t.id = re.Trip_id JOIN registration dr ON t.driver_id=dr.id JOIN registercar c ON t.car_id=c.id WHERE re.user_id=${user_id}`,
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
            Seat= "",
            nextOfKinPhone= "",
            trip_id= "",
            user_id= "",
          
        } = req.body;
      
              db.sequelize
                .query(
                  `INSERT INTO requestride(trip_from, trip_to, date, time,Seat, 
                    nextOfKinPhone,	Trip_id,user_id) VALUES ('${trip_from}','${trip_to}','${date}',
                  '${time}','${Seat}','${nextOfKinPhone}','${trip_id}','${user_id}')`,
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
                          `SELECT * FROM registration`,
                          
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
            `SELECT * FROM registration`,
          )
          .then((results) => res.json({ success: true, results: results[0] }))
          .catch((err) => {
            console.log(err);
            res.status(500).json({ err });
          });
      };

      export const  Trips= (req, res) => {
        const {
          id = '',
       
          from = "",
          to = "",
          date= "",
          time= "",
          availableSeats= "",
          price= "",
          driver_id="",
          
        } = req.body;
      
              db.sequelize
                .query(
                  `INSERT INTO trip(trip_from, trip_to, date, time,availableSeats, 
                    price,driver_id) VALUES ('${from}','${to}','${date}','${time}','${availableSeats}',
                  '${price}','${driver_id}')`
                )
                .then((results) => {
                
                  res.json({ success: true, results,   });
                })
                .catch((err) => {
                  console.log(err);
                  res.status(500).json({ err });
                });
            }
            export const get_registercar= (req, res) => {
              const user_id = req.query.user_id
              db.sequelize
                .query(
                  `SELECT * FROM registercar where driver_id = ${user_id}`,
                )
                .then((results) => res.json({ success: true, results: results[0] }))
                .catch((err) => {
                  console.log(err);
                  res.status(500).json({ err });
                });
            };   
            export const get_Trips= (req, res) => {
              const user_id = req.query.user_id
              db.sequelize
                .query(
                  `SELECT * FROM trip where driver_id = ${user_id}`,
                )
                .then((results) => res.json({ success: true, results: results[0] }))
                .catch((err) => {
                  console.log(err);
                  res.status(500).json({ err });
                });
            };
            export const get_availableTrips= (req, res) => {
              const {from,to,date,time} = req.body
              db.sequelize
                .query(
                  `SELECT * FROM trip WHERE Trip_from='${from}' AND 	Trip_to='${to}' AND date='${date}' AND time='${time}'  `,
                )
                .then((results) => res.json({ success: true, results: results[0] }))
                .catch((err) => {
                  console.log(err);
                  res.status(500).json({ err });
                });
            };