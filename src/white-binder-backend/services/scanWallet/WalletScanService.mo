import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Float "mo:base/Float";
import Debug "mo:base/Debug";

import DummyData "./DummyData";

module {
  public type Transaction = DummyData.Transaction;

  public type ScanResult = {
    address : Text;
    correlationData : [(Text, Float)];
    history : [Transaction];
  };

  public func calculateRiskScore(history : [Transaction]) : Nat {
    var score : Nat = 0;
    for (tx in history.vals()) {
      switch (tx.riskLevel) {
        case ("Low") { score += 10 };
        case ("Medium") { score += 25 };
        case ("High") { score += 50 };
        case (_) {};
      };
    };
    if (score > 100) { 100 } else { score };
  };

  public func getWalletHistory(address : Text) : [Transaction] {
    let found = Array.find<DummyData.Wallet>(
      DummyData.wallets,
      func(w) { w.address == address },
    );
    switch (found) {
      case null { [] };
      case (?w) { w.transactions };
    };
  };

  func upsertCount(counts : [(Text, Nat)], date : Text) : [(Text, Nat)] {
    var i : Nat = 0;
    let n = Array.size(counts);
    while (i < n) {
      if (counts[i].0 == date) {
        return Array.tabulate<(Text, Nat)>(
          n,
          func(j : Nat) : (Text, Nat) {
            if (j == i) { (counts[j].0, counts[j].1 + 1) } else { counts[j] };
          },
        );
      };
      i += 1;
    };
    Array.append(counts, [(date, 1)]);
  };

  // konversi Nat → Float manual tanpa fungsi bawaan
  func natToFloatDebug(n : Nat) : Float {
    Debug.print("natToFloatDebug: n=" # Nat.toText(n));
    var f : Float = 0.0;
    var i : Nat = 0;
    while (i < n) {
      f += 1.0;
      i += 1;
    };
    f;
  };

  func computeCorrelationData(history : [Transaction]) : [(Text, Float)] {
    var counts : [(Text, Nat)] = [];

    for (tx in history.vals()) {
      counts := upsertCount(counts, tx.date);
    };

    var maxCount : Nat = 0;
    for (c in counts.vals()) {
      if (c.1 > maxCount) { maxCount := c.1 };
    };
    if (maxCount == 0) { return [] };

    let denom : Float = natToFloatDebug(maxCount);

    Array.map<(Text, Nat), (Text, Float)>(
      counts,
      func(c : (Text, Nat)) : (Text, Float) {
        let val : Float = natToFloatDebug(c.1);
        (c.0, val / denom);
      },
    );
  };

  public func scanWallet(address : Text) : ScanResult {
    Debug.print("Scanning wallet: " # address);

    let history = getWalletHistory(address);
    Debug.print("History count: " # Nat.toText(Array.size(history)));

    let correlation = computeCorrelationData(history);
    Debug.print("Correlation count: " # Nat.toText(Array.size(correlation)));

    {
      address = address;
      correlationData = correlation;
      history = history;
    };
  };
};
