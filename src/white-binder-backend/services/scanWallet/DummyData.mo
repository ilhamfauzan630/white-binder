module {
  public let dummyScanResult = {
    correlationData = [
      ("2025-08-01", 0.8),
      ("2025-08-02", 0.75),
      ("2025-08-03", 0.82),
      ("2025-08-04", 0.9),
    ];
    history = [
      {
        id = 1;
        from = "0xABC";
        to = "0xDEF";
        amount = 0.5;
        date = "2025-08-01";
        riskLevel = "Low";
      },
      {
        id = 2;
        from = "0xDEF";
        to = "0x123";
        amount = 2.1;
        date = "2025-08-02";
        riskLevel = "High";
      },
    ];
  };
};
