class BAHL{
  num _accountBalance = 1200;

  void deposit(num amount){
    // _accountBalance += amount;
  try{
    if(amount <= 0){
      throw Exception("Invalid Amount");
    }
    else{
      _accountBalance += amount;
      print("Amount Deposited Successfully");
    }
  }
  catch(e){
    print(e);
  }
  }

  void withdraw(num amount){
    try{
      if(amount <= 0){
        throw Exception("Invalid Amount");
      }
      else if(amount > _accountBalance){
        throw Exception("Insufficient Balance");
      }
      else{
        _accountBalance -= amount;
        print("Amount Withdrawn Successfully");
      }
    }
    catch(e){
      print(e);
    }
  }

  void balanceInquiry(){
    print("Your Account Balance is: $_accountBalance");
  }
}