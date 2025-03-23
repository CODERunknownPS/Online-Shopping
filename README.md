# 🛒 Online Shopping Platform

A web-based e-commerce platform built using **ASP.NET C#** and **MS SQL Server** that allows users to browse, add to cart, and purchase products online.

## 🚀 Features
- 🛍️ **Product Listings** – View available products with descriptions and images
- 🛒 **Shopping Cart** – Add/remove products and adjust quantities
- 💳 **Payment Integration** – Secure checkout process
- 👤 **User Authentication** – Login, Register, and Admin Panel
- 🔎 **Search & Filters** – Find products easily
- 📦 **Order Management** – Track placed orders

## 📦 Tech Stack
- **Frontend:** HTML, CSS, JavaScript, Bootstrap
- **Backend:** ASP.NET (C#), Entity Framework
- **Database:** MS SQL Server
- **Authentication:** ASP.NET Identity

## 🔧 Installation Guide
1️⃣ Clone the Repository:
```sh
git clone https://github.com/CODERunknownPS/Online-Shopping.git
cd Online-Shopping
```

2️⃣ Open the project in **Visual Studio**

3️⃣ Restore Dependencies:
```sh
nuget restore
```

4️⃣ Configure Database Connection:
- Open `appsettings.json` or `web.config`
- Update **SQL Server** credentials

5️⃣ Run Database Migrations:
```sh
dotnet ef database update
```

6️⃣ Start the Application:
```sh
dotnet run
```

## 📸 Screenshots
(Add project screenshots here)

## 🤝 Contributing
Contributions are welcome! Feel free to fork this repository and submit pull requests.

## 📜 License
This project is licensed under the MIT License.
