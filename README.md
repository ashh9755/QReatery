# 🍽️ QReatery – Cafeteria Management App

A mobile application designed to streamline cafeteria operations by enabling users to pre-order food, make online payments, and collect orders using QR codes. Vendors can scan these codes to quickly retrieve order details and serve efficiently. Built with Flutter and Firebase for a seamless, cross-platform experience.

---

## 📱 Features

- ✅ **User Login & Authentication** (via Firebase Auth)
- 🛒 **Browse Menu Items** with images, prices, and descriptions
- 📦 **Add to Cart & Pre-order** food items
- 💳 **Secure Online Payments**
- 📄 **QR Code Generation** after payment
- 📷 **QR Code Scanning by Vendors** to fetch order details instantly
- 🧾 **Order Status Tracking**: Pending, Completed, Cancelled
- 📊 **Admin/Vendor Control Panel** (role-based access)

---

## 🔧 Tech Stack

| Tool/Framework      | Purpose                                 |
|---------------------|-----------------------------------------|
| **Flutter/FlutterFlow** | UI Development and Logic Integration     |
| **Firebase Auth**   | User Authentication                     |
| **Cloud Firestore** | Realtime Database for Orders/Menu       |
| **Firebase Storage**| Hosting menu item images                |
| **QR Code Scanner** | For vendor-side order handling          |

---

## 🧠 Architecture

- **MVVM Structure** for clean separation of concerns:
  - `Model` → Firebase collections (Orders, Menu, Users)
  - `View` → Flutter UI Components
  - `ViewModel` → App Logic & State Management

---

## 🗂️ Firestore Schema (Simplified)

### `Users`
- `uid`: *string*
- `role`: *user / vendor / admin*
- `name`, `email`

### `Menu`
- `name`: *string*
- `price`: *number*
- `image_url`: *string*
- `item_id`: *auto-generated or manual*

### `Orders`
- `order_id`: *string* (used in QR)
- `user_ref`: *reference to Users*
- `food_items`: *array of item document references*
- `total_price`: *number*
- `status`: *Pending / Completed / Cancelled*
- `timestamp`: *datetime*

---

## 🧪 How It Works

### User Flow:
1. Login → Browse Menu → Add to Cart
2. Place Order → Pay → Get QR Code
3. Show QR at counter for pickup

### Vendor Flow:
1. Login as Vendor
2. Scan User QR
3. See order details → Mark as served

---

## 🚀 Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/ashh9755/QReatery.git
   cd QReatery
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Configure Firebase:**
   - Add your `google-services.json` to `android/app/`.
   - Add your `GoogleService-Info.plist` to `ios/Runner/`.
4. **Run the app:**
   ```sh
   flutter run
   ```

---

## 📸 Screenshots
![image](https://github.com/user-attachments/assets/e2319d8f-4dcb-47ec-80ec-8c8948c780b2)
![image](https://github.com/user-attachments/assets/05809820-b6ab-4789-86cd-596980059008)
![image](https://github.com/user-attachments/assets/8c59710e-5232-4cf2-ad5a-eb01aa4e6427)
![image](https://github.com/user-attachments/assets/c525c573-c9ef-4237-85b7-451c28e8dc63)




## 📈 Impact

- ⏱️ Reduced average wait time for users
- 🎯 Increased order accuracy
- 📦 Streamlined vendor-side delivery

---

## 🙌 Credits

Developed by: Ashley Gomes 
Batch: 2025, NMIMS Indore
GitHub: ashh9755
 

---

## 📃 License

This project is licensed under the [MIT License](LICENSE).
