# Grocery Shop Management System in 8086 Assembly

A fully functional menu-driven grocery management system developed in 8086 Assembly using DOS interrupts.
## 🛒 Project Overview

This project is a console-based Grocery Shop Management System built using 8086 Assembly Language (MASM/TASM) for DOS.  

It simulates a real-life grocery shopping experience including product browsing, cart management, admin controls, coupon system, payment processing, and store rating — all implemented using low-level assembly programming.

---

## 🚀 Features

### 👤 Customer Side
- Browse products by category:
  - Staple Foods / Essentials
  - Spices & Condiments
  - Dairy Products
  - Dry Snacks & Packaged Foods
- Add items with quantity selection
- Remove last added item
- View running total
- Checkout system
- Coupon generation based on total bill
- Apply coupon with validation (3 attempts allowed)
- Payment methods:
  - Cash
  - Cash on Delivery (COD)
- Automatic change calculation
- Store rating system (1–5)
- Displays average rating

---

### 🔐 Admin Panel

Protected with PIN authentication.

**Default PIN:** `1234`

Admin Capabilities:
- Update product price
- Update product quantity
- Add new item
- Delete existing item

---

## 🎟️ Coupon System

Discount is applied based on total purchase amount:

| Total Bill | Discount |
|------------|----------|
| ≥ 1000 tk  | 100 tk   |
| ≥ 2000 tk  | 220 tk   |
| ≥ 3000 tk  | 350 tk   |

- A coupon code is generated automatically.
- User must enter the correct coupon code.
- Maximum 3 attempts allowed.

---

## 🔎 Search System

Users can:
- Search product by product code (1–30)
- Search product by category

Displays product name and current price.

---

## ⭐ Rating System

- User can rate the store from 1 to 5.
- Invalid ratings are rejected.
- Program calculates and displays the average rating.

---

## 🧠 Technical Implementation

- Language: 8086 Assembly
- Memory Model: SMALL
- Platform: DOS / DOSBox
- Interrupt Used: `INT 21H`
- Uses:
  - Procedures (PROC / ENDP)
  - Arrays
  - Loops and conditional jumps
  - Arithmetic operations (MUL, DIV)
  - Stack operations
  - ASCII to numeric conversions
  - Structured menu-driven logic

---

## 📂 Data Structures

- `price DW 30 DUP(?)` → Stores product prices
- `quantity_arr DW 30 DUP(50)` → Stores stock quantity
- `sum` → Running total
- `DISCOUNT` → Applied discount
- `RATING_SUM`, `RATING_COUNT` → Rating tracking
- `previous_item` → Supports remove-last-item feature

---

## ▶️ How to Run

### Using emu8086

1. Install **emu8086**.
2. Open emu8086.
3. Click **File → Open**.
4. Select the `.asm` file.
5. Click **Compile**.
6. Click **Run (Emulate)**.

The program will execute inside the emulated DOS environment.


---

## 📘 Learning Objectives

This project demonstrates:

- Low-level program design
- Real-world system simulation in assembly
- Memory addressing and array indexing
- Menu-driven architecture
- User input handling
- Numeric processing and output formatting
- Modular programming using procedures

---

## 🔮 Future Improvements

- Multi-digit quantity input
- Persistent file storage
- Sales report generation
- Better UI formatting
- Advanced inventory management
- Multiple admin accounts

---

## 📜 License

This project is developed for educational purposes.


1. Install DOSBox.
2. Mount your project directory:
