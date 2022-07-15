import passport from 'passport';
import config from '../config/config';
import { allowOnly } from '../services/routesHelper';
import {
  getUserInfo, 
  login
} from '../controllers/user';

module.exports = (app) => {
  // create a new user
  // app.post(
  //   '/api/auth/users/create',
  //   create
  //   // passport.authenticate('jwt', { session: false }),
  //   // allowOnly(config.accessLevels.admin, create)
  // );

  // user login
  app.post('/api/auth/users/login', login);
  app.post('/api/auth/users/info', getUserInfo);
  // app.post('/api/auth/users/passenger-login', passengerLogin);

  // //retrieve all users
  // app.get(
  //   '/api/users',
  //   passport.authenticate('jwt', {
  //     session: false
  //   }),
  //   findAllUsers
  //   // allowOnly(config.accessLevels.admin, findAllUsers)
  // );

  // // retrieve user by id
  // app.get(
  //   '/api/users/:userId',
  //   passport.authenticate('jwt', {
  //     session: false,
  //   }),
  //   findById
  //   // allowOnly(config.accessLevels.admin, findById)
  // );

  // // update a user with id
  // app.put(
  //   '/api/users/:userId',
  //   passport.authenticate('jwt', {
  //     session: false,
  //   }),
  //   update
  //   // allowOnly(config.accessLevels.user, update)
  // );

  // // delete a user
  // app.delete(
  //   '/api/users/:userId',
  //   passport.authenticate('jwt', {
  //     session: false,
  //   }),
  //   // allowOnly(config.accessLevels.admin, deleteUser)
  // );

};