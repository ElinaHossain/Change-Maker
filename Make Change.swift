import Foundation

func make_change(amount_leftover:Int) {
     let amount_leftover_2 = amount_leftover % 100
     let dollars = amount_leftover / 100
     let amount_leftover_3 = amount_leftover_2 % 25
     let quarters = amount_leftover_2 / 25
     let amount_leftover_4 = amount_leftover_3 % 10
     let dimes = amount_leftover_3 / 10
     let pennies = amount_leftover_4 % 5
     let nickels = amount_leftover_4 / 5

     print("Amount leftover: ")
     print("Dollars: \(dollars)")
     print("Quarters: \(quarters)")
     print("Dimes: \(dimes)")
     print("Nickels: \(nickels)")
     print("Pennies: \(pennies)")
}

print("Enter the amount of money owed: ", terminator: "")
if let amount_owed: Double = Double(readLine()!) {
     let amount_owed_int: Int = Int(amount_owed * 100) 
     if amount_owed_int > 0 {
          print("Enter the amount paid: ", terminator: "")
          if let amount_paid: Double = Double(readLine()!) {
               let amount_paid_int: Int = Int(amount_paid * 100)
               if amount_paid_int > amount_owed_int {
                    make_change(amount_leftover: amount_paid_int - amount_owed_int)
               }
               else { 
                    print("Amount paid must be a greater than amount owed")
               } 
          } else {
               print ("Amount owed must be a number")
               }
     } else {
          print("Amount owed must be greater than 0")
               }
} else {
     print("Amount owed must be a number")
}