# RAM Implementation Using Verilog

## 📌 Introduction

This project shows how to design a simple RAM (Random Access Memory) in Verilog. RAM is used to store data temporarily and allows both read and write operations.

## ⚙️ Working

* When write enable (we) is HIGH, data is written into memory
* When write enable (we) is LOW, stored data is read from memory
* Data is accessed using address lines

## 🔢 Configuration

* Memory size: 4 locations
* Data width: 4 bits
* Address width: 2 bits

## 📊 Sample Operation

Write:
Address 00 → Data 1010
Address 01 → Data 1100

Read:
Address 00 → Data 1010
Address 01 → Data 1100

## 🧪 Verification

A testbench is included to test both writing and reading operations.

## 🛠️ Tools

* Verilog HDL
* Simulation tools (ModelSim / Icarus Verilog)

## 📁 Files

* `ram.v`
* `ram_tb.v`

## 🎯 Learning Outcome

Understand how RAM stores data and how read/write operations are controlled in digital circuits.
