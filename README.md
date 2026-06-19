
# U6 CRM Application

A simple Customer Relationship Management (CRM) application built with Ruby on Rails.

## Features

* Manage customers using ActiveAdmin
* Create, view, update, and delete customer records
* Upload customer images using Active Storage
* Display all customers
* Display customers in alphabetical order
* Display customers with missing email addresses
* Reusable customer partial for displaying customer information

## Customer Attributes

* Full Name
* Phone Number
* Email Address
* Notes
* Image

## Technologies Used

* Ruby on Rails
* ActiveAdmin
* Devise
* Active Storage
* SQLite3

## Setup

Clone the repository:

```bash
git clone https://github.com/LucienRRC/U6_CRM.git
cd U6_CRM
```

Install dependencies:

```bash
bundle install
```

Set up the database:

```bash
rails db:create
rails db:migrate
```

Start the server:

```bash
rails server
```

Open:

```text
http://localhost:3000
```

Admin panel:

```text
http://localhost:3000/admin
```

