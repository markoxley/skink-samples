# static_service_0010

A real-world banking service example. The `BankService` defines `Deposit`, `Withdraw`, and `Balance` methods, implemented for `AccountImpl` which tracks the account balance and transaction count.

## Code

```skink
module static_service_0010

service BankService {
    fn Deposit(amount: float) -> float
    fn Withdraw(amount: float) -> float
    fn Balance() -> float
}

pub struct AccountImpl {
    balance: float
    transactions: int
}

service BankService for AccountImpl {
    fn Deposit(self: *AccountImpl, amount: float) -> float {
        self.balance = self.balance + amount
        self.transactions = self.transactions + 1
        return self.balance
    }

    fn Withdraw(self: *AccountImpl, amount: float) -> float {
        if amount > self.balance {
            return self.balance
        }
        self.balance = self.balance - amount
        self.transactions = self.transactions + 1
        return self.balance
    }

    fn Balance(self: AccountImpl) -> float {
        return self.balance
    }
}

pub fn demo() -> float {
    acc := AccountImpl{balance: 100.0, transactions: 0}
    acc.Deposit(50.0)
    acc.Withdraw(30.0)
    acc.Deposit(25.0)
    return acc.Balance()
}

fn main() -> int {
    result := demo()
    print("Balance: {result}")
    return 0
}

```
