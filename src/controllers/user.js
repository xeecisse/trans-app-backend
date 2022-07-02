import db from "../models";

export function login (req,res){
    const {phone, password, account_type=''} = req.body;

    db.sequelize.query(`SELECT * FROM registration WHERE phoneNo="${phone}" AND account_type='${account_type}'`)
    .then(resp => {
        if(resp[0].length) {
            let user = resp[0][0]
            // console.log(user)
            if(user.passWord === password) {
                res.json({ success:true, user, message: "User successfully logged in"})

            } else {
                res.json({ success:false, message: "Password is incorrect"})
            }
            
        } else {
            res.json({ success:false, message: "Phone number does not exist"})
        }
    })
    .catch(err => {
        console.log(err)
        res.status(500).json({ success:false, message: "Server unable to process request at this time, please try again later."})
    })
}

// export function passengerLogin (req,res){

//     const {phone, password} = req.body;

//     db.sequelize.query(`SELECT * FROM passenger WHERE phoneNo="${phone}"`)
//     .then(resp => {
//         if(resp[0].length) {
//             let user = resp[0][0]
//             // console.log(user)
//             if(user.password === password) {
//                 res.json({ success:true, user, message: "User successfully logged in"})

//             } else {
//                 res.json({ success:false, message: "Password is incorrect"})
//             }
            
//         } else {
//             res.json({ success:false, message: "Phone number does not exist"})
//         }
//     })
//     .catch(err => {
//         console.log(err)
//         res.status(500).json({ success:false, message: "Server unable to process request at this time, please try again later."})
//     })
// }

export function getUserInfo (req,res){
    const {phone} = req.body;

    db.sequelize.query(`SELECT * FROM registration WHERE phoneNo="${phone}" AND account_type='${account_type}'`)
    .then(resp => {
        if(resp[0].length) {
            let user = resp[0][0]
                res.json({ success:true, user, message: "User successfully logged in"})
        } else {
            res.json({ success:false, message: "Phone number does not exist"})
        }
    })
    .catch(err => {
        console.log(err)
        res.status(500).json({ success:false, message: "Server unable to process request at this time, please try again later."})
    })
}

export function passengerInfo (req,res){

    const {phone} = req.body;

    db.sequelize.query(`SELECT * FROM passenger WHERE phoneNo="${phone}"`)
    .then(resp => {
        if(resp[0].length) {
            let user = resp[0][0]
            // console.log(user)
                res.json({ success:true, user, message: "User successfully logged in"})
        } else {
            res.json({ success:false, message: "Phone number does not exist"})
        }
    })
    .catch(err => {
        console.log(err)
        res.status(500).json({ success:false, message: "Server unable to process request at this time, please try again later."})
    })
}