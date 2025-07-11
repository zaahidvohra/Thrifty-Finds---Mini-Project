# Thrifty Finds - Online Secondhand Shopping Platform

A comprehensive web application built with ASP.NET that serves as an online marketplace for users to buy and sell used items. This platform facilitates seamless transactions between buyers and sellers in a user-friendly environment.

## 🚀 Project Overview

Thrifty Finds is a semester 5 test project that creates a robust platform for secondhand shopping. The website allows users to create advertisements for items they want to sell and also enables buyers to post requirements for specific items they're looking to purchase.

### Key Features

- **Dual Marketplace Functionality**
  - Sellers can create ads for their used items
  - Buyers can post ads expressing their requirements for specific items
  
- **User Management System**
  - User registration and authentication
  - Profile management and password reset functionality
  - Account deletion options

- **Category-Based Organization**
  - Multiple product categories (Mobiles, Cars, Bikes, Fashion, Furniture, etc.)
  - Subcategory support for better organization
  - Easy browsing and searching capabilities

- **Admin Panel**
  - Category and subcategory management
  - Advertisement monitoring and management
  - User management capabilities

## 🛠️ Technology Stack

- **Frontend**: HTML5, CSS3, JavaScript, Bootstrap
- **Backend**: ASP.NET Web Forms (C#)
- **Database**: SQL Server with Entity Framework
- **Development Environment**: Visual Studio 2022
- **Version Control**: Git/GitHub

## 📁 Project Structure

```
Online_secondhand_shopping/
├── 01welcome/              # Landing pages and authentication
│   ├── Welcome_page.aspx
│   ├── Login_page.aspx
│   ├── Signup_page.aspx
│   ├── Aboutus_page.aspx
│   └── assets/             # Static assets (CSS, JS, images)
├── 02adminpages/           # Admin panel functionality
│   ├── Adm_home.aspx
│   ├── Adm_Addcat_page.aspx
│   ├── Adm_Delcat.aspx
│   └── ...
├── 03userpages/            # User dashboard and features
│   ├── Usr_home.aspx
│   ├── Postad_page.aspx
│   ├── Usr_Myads.aspx
│   └── ...
└── Web.config              # Application configuration
```

## 🎯 Core Functionalities

### For Users
- **Account Management**: Registration, login, profile editing
- **Advertisement Posting**: Create ads for selling items
- **Requirement Posting**: Post buying requirements
- **Category Browsing**: Browse items by categories
- **Search Functionality**: Find specific items or sellers

### For Administrators
- **Category Management**: Add/delete product categories and subcategories
- **Advertisement Monitoring**: View and manage all advertisements
- **User Management**: Monitor user activities and accounts

## 📊 Development Methodology

- **Model**: Spiral Model
- **Team Structure**: Frontend and Backend development teams
- **Documentation**: UML diagrams including Use Case, Activity, Sequence, Class, and E-R diagrams

## 🎨 Design Implementation

### Frontend
- **Responsive Design**: Bootstrap framework for mobile-friendly interface
- **Interactive Elements**: JavaScript for dynamic user interactions
- **Visual Design**: Adobe Illustrator and After Effects for graphics
- **User Experience**: Intuitive navigation and clean interface

### Backend
- **Database Integration**: SQL Server with ADO.NET
- **Security**: Input validation and secure authentication
- **Performance**: Optimized queries and efficient data handling

## 🚀 Getting Started

### Prerequisites
- Visual Studio 2022 or later
- .NET Framework 4.8
- SQL Server (LocalDB supported)
- IIS Express

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/Online_secondhand_shopping.git
   ```

2. **Open the solution**
   - Open `Online_secondhand_shopping.sln` in Visual Studio

3. **Database Setup**
   - The application uses LocalDB with automatic database creation
   - Connection string is configured in `Web.config`

4. **Build and Run**
   - Build the solution (Ctrl+Shift+B)
   - Run with IIS Express (F5)

## 📝 Usage

### For New Users
1. Navigate to the welcome page
2. Click "Sign Up" to create an account
3. Fill in required details with validation
4. Login with your credentials

### Posting an Advertisement
1. Login to your account
2. Navigate to "Post Ad" section
3. Select appropriate category and subcategory
4. Fill in item details, description, and upload images
5. Submit the advertisement

### Browsing Items
1. Use category filters on the homepage
2. Browse through different product categories
3. Use search functionality to find specific items
4. View detailed item pages with seller information

## 🔒 Security Features

- **Input Validation**: Server-side and client-side validation
- **Password Security**: Strong password requirements
- **Session Management**: Secure user session handling
- **SQL Injection Prevention**: Parameterized queries

## 🎯 Project Goals

- Create a user-friendly platform for secondhand trading
- Facilitate easy communication between buyers and sellers
- Provide a cost-effective solution for purchasing pre-owned items
- Promote sustainable consumption through item reuse

## 👥 Team

This project is developed as part of semester 5 coursework, focusing on:
- Software engineering principles
- Web application development
- Database design and implementation
- User interface design
- Project management

## 📞 Support

For help and support:
- Check the Help section within the application
- Contact us through the Contact Us page
- Review the terms and conditions for usage guidelines

## 📄 License

This project is developed for educational purposes as part of semester 5 coursework.

## 🔮 Future Enhancements

- Payment gateway integration
- Real-time chat functionality
- Mobile application development
- Advanced search and filtering options
- Rating and review system
- Email notifications

---

**© 2023 Thrifty Finds - Online Secondhand Shopping Platform**

*Developed with ❤️ for sustainable shopping*
