# README

- An ERD of Plato's data models - https://ibb.co/f4TZ6V

- Pseudocode of Pricing components of Plato in calculating and charging Plato Users/Organizations.
```
for Organizations:

( Monthly Rate or Annual Rate of current Plan ) + ( Additional User Seat above current plan limit * Charge )  
  
for Solo Users:

Monthly Rate of solo plan type
```
A list of Plato's dependencies : database, server, and 3rd party packages.

  gem 'devise'
  gem 'omniauth-facebook'
  gem 'sqlite3'
  
  


