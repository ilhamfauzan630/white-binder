import DummyData "./DummyData";

module {
  public type Transaction = {
    id : Nat;
    from : Text;
    to : Text;
    amount : Float;
    date : Text;
    riskLevel : Text;
  };

  public type ScanResult = {
    address : Text;
    correlationData : [(Text, Float)]; // pasangan tanggal dan nilai korelasi
    history : [Transaction];
  };

  public func scanWallet(address : Text) : async ScanResult {
    // Untuk saat ini kita kembalikan data dummy
    let data = DummyData.dummyScanResult;
    return {
      address = address;
      correlationData = data.correlationData;
      history = data.history;
    };
  };

  public func getWalletHistory(address : Text) : async [Transaction] {
    let data = DummyData.dummyScanResult;
    return data.history;
  };
};
