<template>
  <div class="p-6 min-h-screen bg-gradient-to-b from-gray-900 to-black text-white flex flex-col">
    <!-- Hero Section -->
    <section class="flex-1 flex flex-col items-center justify-center text-center px-6 py-20">
      <h1 class="text-5xl font-bold mb-6">White Binder</h1>
      <p class="text-lg text-gray-300 max-w-2xl mb-8 leading-relaxed">
        White Binder is a platform for investigating online gambling activities 
        based on crypto wallet transaction analysis. 
        By leveraging graph visualization and network analysis, 
        White Binder helps uncover suspicious wallet interconnections 
        and supports a healthy crypto ecosystem.
      </p>
      <router-link
        to="/home"
        class="px-8 py-3 bg-blue-600 hover:bg-blue-700 rounded-xl text-lg font-semibold transition"
      >
        Get Started
      </router-link>
    </section>

    <!-- About Section -->
    <section class="py-16 px-6 bg-gray-900">
      <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-3xl font-bold mb-6">Why White Binder?</h2>
        <p class="text-gray-400 text-base leading-relaxed">
          The rise of online gambling using cryptocurrencies poses a challenge 
          for regulators and the public. Unfortunately, there are limited 
          open tools to analyze wallet transactions and detect suspicious patterns. 
          White Binder was created to fill this gap by providing a transparent, 
          open-source solution for blockchain investigation.
        </p>
      </div>
    </section>

    <!-- Features Section -->
    <section class="bg-gray-800 py-16 px-6">
      <h2 class="text-3xl font-bold text-center mb-10">Key Features</h2>
      <div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-3 max-w-6xl mx-auto">
        <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
          <h3 class="text-xl font-semibold mb-3">Wallet Analytics</h3>
          <p class="text-gray-400 text-sm">
            Analyze crypto wallets to detect gambling-related activities through transaction patterns.
          </p>
        </div>
        <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
          <h3 class="text-xl font-semibold mb-3">Graph Visualization</h3>
          <p class="text-gray-400 text-sm">
            Explore wallet interconnections with interactive network graphs and clustering analysis.
          </p>
        </div>
        <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
          <h3 class="text-xl font-semibold mb-3">Risk Detection</h3>
          <p class="text-gray-400 text-sm">
            Automatically flag suspicious wallets with risk scoring (low, medium, high).
          </p>
        </div>
        <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
          <h3 class="text-xl font-semibold mb-3">Reports</h3>
          <p class="text-gray-400 text-sm">
            Generate detailed reports for institutions, regulators, and researchers.
          </p>
        </div>
        <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
          <h3 class="text-xl font-semibold mb-3">Modular Design</h3>
          <p class="text-gray-400 text-sm">
            Built modularly and ready to integrate real-time data from Ethereum and Tron.
          </p>
        </div>
        <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
          <h3 class="text-xl font-semibold mb-3">Open Source</h3>
          <p class="text-gray-400 text-sm">
            Lightweight, customizable, and open for the public, researchers, and regulators.
          </p>
        </div>
      </div>
    </section>

    <!-- How It Works Section -->
    <section class="py-16 px-6 bg-gray-900">
      <h2 class="text-3xl font-bold text-center mb-10">How It Works</h2>
      <div class="max-w-5xl mx-auto grid md:grid-cols-3 gap-8 text-center">
        <div>
          <div class="text-blue-500 text-4xl font-bold mb-4">1</div>
          <h3 class="text-xl font-semibold mb-2">Enter a Wallet</h3>
          <p class="text-gray-400 text-sm">Provide a wallet address to start the analysis process.</p>
        </div>
        <div>
          <div class="text-blue-500 text-4xl font-bold mb-4">2</div>
          <h3 class="text-xl font-semibold mb-2">Analyze Transactions</h3>
          <p class="text-gray-400 text-sm">Our system scans the wallet’s transactions and patterns.</p>
        </div>
        <div>
          <div class="text-blue-500 text-4xl font-bold mb-4">3</div>
          <h3 class="text-xl font-semibold mb-2">View Results</h3>
          <p class="text-gray-400 text-sm">Explore the network graph, risk scoring, and detailed reports.</p>
        </div>
      </div>
    </section>

    <!-- Target Audience Section -->
    <section class="bg-gray-800 py-16 px-6">
      <h2 class="text-3xl font-bold text-center mb-10">Who Can Benefit?</h2>
      <div class="max-w-6xl mx-auto grid md:grid-cols-2 lg:grid-cols-4 gap-8 text-center">
        <div class="p-6 bg-gray-900 rounded-2xl shadow-lg">
          <h3 class="font-semibold mb-2">Public Users</h3>
          <p class="text-gray-400 text-sm">Check if your wallet is linked to suspicious networks.</p>
        </div>
        <div class="p-6 bg-gray-900 rounded-2xl shadow-lg">
          <h3 class="font-semibold mb-2">Researchers</h3>
          <p class="text-gray-400 text-sm">Investigate blockchain patterns and online gambling behaviors.</p>
        </div>
        <div class="p-6 bg-gray-900 rounded-2xl shadow-lg">
          <h3 class="font-semibold mb-2">Regulators</h3>
          <p class="text-gray-400 text-sm">Strengthen regulations and monitoring of crypto asset activities.</p>
        </div>
        <div class="p-6 bg-gray-900 rounded-2xl shadow-lg">
          <h3 class="font-semibold mb-2">Institutions</h3>
          <p class="text-gray-400 text-sm">Adopt open-source tools for compliance and fraud detection.</p>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-20 text-center">
      <h2 class="text-3xl font-bold mb-6">Start Exploring Wallet Networks</h2>
      <p class="text-gray-400 max-w-2xl mx-auto mb-8">
        Join White Binder and uncover the hidden connections in blockchain transactions. 
        Help build a safer, more transparent crypto ecosystem.
      </p>
      <router-link
        to="/home"
        class="px-8 py-3 bg-blue-600 hover:bg-blue-700 rounded-xl text-lg font-semibold transition"
      >
        Get Started Now
      </router-link>
    </section>

    <!-- Footer -->
    <footer class="bg-black py-6 text-center text-gray-500 text-sm">
      © 2025 White Binder — Open Source Blockchain Analytics
    </footer>
  </div>
</template>


<script>
export default {
    name: 'LandingPage',
}
</script>