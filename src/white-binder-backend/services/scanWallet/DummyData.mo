// src/white-binder-backend/services/scanWallet/DummyData.mo
import Array "mo:base/Array";
import Nat "mo:base/Nat";

module {
  public type Transaction = {
    id : Nat;
    from : Text;
    to : Text;
    amount : Float;
    date : Text; // "YYYY-MM-DD"
    riskLevel : Text; // "Low" | "Medium" | "High"
  };

  public type Wallet = {
    address : Text;
    transactions : [Transaction];
  };

  // 10 wallet dummy, saling silang transaksi
  public let wallets : [Wallet] = [
    {
      address = "0xMAIN123456789";
      transactions = [
        {
          id = 1;
          from = "0xMAIN123456789";
          to = "0xABC123456789";
          amount = 1.2;
          date = "2025-08-01";
          riskLevel = "Low";
        },
        {
          id = 2;
          from = "0xDEF987654321";
          to = "0xMAIN123456789";
          amount = 0.8;
          date = "2025-08-02";
          riskLevel = "Medium";
        },
        {
          id = 3;
          from = "0xMAIN123456789";
          to = "0xGHI555666777";
          amount = 2.0;
          date = "2025-08-03";
          riskLevel = "High";
        },
        {
          id = 4;
          from = "0xMAIN123456789";
          to = "0xJKL111222333";
          amount = 0.3;
          date = "2025-08-04";
          riskLevel = "Low";
        },
        {
          id = 5;
          from = "0xMNO444555666";
          to = "0xMAIN123456789";
          amount = 5.0;
          date = "2025-08-04";
          riskLevel = "Medium";
        },
      ];
    },
    {
      address = "0xABC123456789";
      transactions = [
        {
          id = 6;
          from = "0xMAIN123456789";
          to = "0xABC123456789";
          amount = 1.2;
          date = "2025-08-01";
          riskLevel = "Low";
        },
        {
          id = 7;
          from = "0xABC123456789";
          to = "0xPQR777888999";
          amount = 0.4;
          date = "2025-08-02";
          riskLevel = "Low";
        },
        {
          id = 8;
          from = "0xXYZ000111222";
          to = "0xABC123456789";
          amount = 3.3;
          date = "2025-08-03";
          riskLevel = "Medium";
        },
      ];
    },
    {
      address = "0xDEF987654321";
      transactions = [
        {
          id = 9;
          from = "0xDEF987654321";
          to = "0xMAIN123456789";
          amount = 0.8;
          date = "2025-08-02";
          riskLevel = "Medium";
        },
        {
          id = 10;
          from = "0xDEF987654321";
          to = "0xSTU222333444";
          amount = 4.5;
          date = "2025-08-03";
          riskLevel = "High";
        },
      ];
    },
    {
      address = "0xGHI555666777";
      transactions = [
        {
          id = 11;
          from = "0xMAIN123456789";
          to = "0xGHI555666777";
          amount = 2.0;
          date = "2025-08-03";
          riskLevel = "High";
        },
        {
          id = 12;
          from = "0xGHI555666777";
          to = "0xABC123456789";
          amount = 0.2;
          date = "2025-08-04";
          riskLevel = "Low";
        },
      ];
    },
    {
      address = "0xJKL111222333";
      transactions = [
        {
          id = 13;
          from = "0xMAIN123456789";
          to = "0xJKL111222333";
          amount = 0.3;
          date = "2025-08-04";
          riskLevel = "Low";
        },
        {
          id = 14;
          from = "0xJKL111222333";
          to = "0xDEF987654321";
          amount = 1.1;
          date = "2025-08-05";
          riskLevel = "Medium";
        },
      ];
    },
    {
      address = "0xMNO444555666";
      transactions = [{
        id = 15;
        from = "0xMNO444555666";
        to = "0xMAIN123456789";
        amount = 5.0;
        date = "2025-08-04";
        riskLevel = "Medium";
      }];
    },
    {
      address = "0xPQR777888999";
      transactions = [{
        id = 16;
        from = "0xABC123456789";
        to = "0xPQR777888999";
        amount = 0.4;
        date = "2025-08-02";
        riskLevel = "Low";
      }];
    },
    {
      address = "0xSTU222333444";
      transactions = [{
        id = 17;
        from = "0xDEF987654321";
        to = "0xSTU222333444";
        amount = 4.5;
        date = "2025-08-03";
        riskLevel = "High";
      }];
    },
    {
      address = "0xXYZ000111222";
      transactions = [{
        id = 18;
        from = "0xXYZ000111222";
        to = "0xABC123456789";
        amount = 3.3;
        date = "2025-08-03";
        riskLevel = "Medium";
      }];
    },
    {
      address = "0xSAFE000SAFE11";
      transactions = [
        {
          id = 19;
          from = "0xSAFE000SAFE11";
          to = "0xABC123456789";
          amount = 0.1;
          date = "2025-08-01";
          riskLevel = "Low";
        },
        {
          id = 20;
          from = "0xSAFE000SAFE11";
          to = "0xJKL111222333";
          amount = 0.2;
          date = "2025-08-02";
          riskLevel = "Low";
        },
      ];
    },
  ];
};
