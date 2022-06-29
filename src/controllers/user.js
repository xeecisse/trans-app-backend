import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import passport from 'passport';

import db from '../models';
const User = db.User;

// load input validation
import validateRegisterForm from '../validation/register';
import validateLoginForm from '../validation/login';

// create user
const create = (req, res) => {
  const { errors, isValid } = validateRegisterForm(req.body);
  let {
    firstName,
    lastName,
    email,
    password
  } = req.body;
  // console.log(isValid)
  // check validation
  if (!isValid) {
    return res.status(400).json(errors);
  }

  User.findAll({ where: { email } }).then(user => {
    if (user.length) {
      return res.status(400).json({ msg: 'email already exists!' });
    } else {
      let newUser = {
        firstName,
        lastName,
        email,
        password
      };
      bcrypt.genSalt(10, (err, salt) => {
        bcrypt.hash(newUser.password, salt, (err, hash) => {
          if (err) throw err;
          newUser.password = hash;
          User.create(newUser)
            .then(user => {
              res.json({ user });
            })
            .catch(err => {
              res.status(500).json({ err });
            });
        });
      });
    }
  });
};

const login = (req, res) => {
  const { errors, isValid } = validateLoginForm(req.body);

  // check validation
  // if (!isValid) {
  //   return res.status(400).json(errors);
  // }

  const { email, password } = req.body;
  console.log(req.body)

  User.findAll({
    where: {
      email
    }
  })
    .then(user => {

      //check for user
      if (!user.length) {
        errors.email = 'User not found!';
        return res.status(404).json(errors);
      }
      // console.log(user)
      let originalPassword = user[0].dataValues.password

      //check for password
      bcrypt
        .compare(password, originalPassword)
        .then(isMatch => {
          if (isMatch) {
            // user matched
            console.log('matched!')
            const { id, email } = user[0].dataValues;
            const payload = { id, email }; //jwt payload
            // console.log(payload)

            jwt.sign(payload, 'secret', {
              expiresIn: 3600
            }, (err, token) => {
              res.json({
                success: true,
                token: 'Bearer ' + token,
                // role: user[0].dataValues.role
              });
            });
          } else {
            errors.password = 'Password not correct';
            return res.status(400).json(errors);
          }
        }).catch(err => console.log(err));
    }).catch(err => res.status(500).json({ err }));
};

// fetch all users
const findAllUsers = (req, res) => {
  User.findAll()
    .then(user => {
      res.json({ user });
    })
    .catch(err => res.status(500).json({ err }));
};

// fetch user by userId
const findById = (req, res) => {
  const id = req.params.userId;

  User.findAll({ where: { id } })
    .then(user => {
      if (!user.length) {
        return res.json({ msg: 'user not found' })
      }
      res.json({ user })
    })
    .catch(err => res.status(500).json({ err }));
};

// update a user's info
const update = (req, res) => {
  let { name, lastname, HospitalId, role, image } = req.body;
  const id = req.params.userId;

  User.update(
    {
      name,
      lastname,
      role,
    },
    { where: { id } }
  )
    .then(user => res.status(200).json({ user }))
    .catch(err => res.status(500).json({ err }));
};

// delete a user
const deleteUser = (req, res) => {
  const id = req.params.userId;

  User.destroy({ where: { id } })
    .then(() => res.status.json({ msg: 'User has been deleted successfully!' }))
    .catch(err => res.status(500).json({ msg: 'Failed to delete!' }));
};

export {
  create,
  login,
  findAllUsers,
  findById,
  update,
  deleteUser
}