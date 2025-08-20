<template>
  <div
    ref="container"
    class="landing-container h-screen w-full overflow-y-scroll overflow-x-hidden snap-y snap-mandatory overscroll-contain"
  >
    <!-- scroll animation -->
    <div
      v-if="currentSection < sectionEls.length - 1"
      class="fixed right-4 top-1/2 transform -translate-y-1/2 z-50 flex flex-col items-center space-y-2 text-gray-400"
    >
      <span class="text-xs animate-pulse">Scroll</span>
      <i class="fas fa-angle-down text-xl animate-bounce"></i>
    </div>

    <!-- Hero Section -->
    <section class="h-screen flex items-center justify-center text-center px-6 snap-start">
      <div :ref="setAnimRefs" class="opacity-0 translate-y-10 transition-all duration-700">
        <h1 class="text-5xl font-bold mb-6">White Binder</h1>
        <p class="text-lg text-gray-300 max-w-2xl mb-8 leading-relaxed">
          White Binder is a platform for investigating online gambling activities 
          based on crypto wallet transaction analysis. By leveraging graph
          visualization and network analysis, White Binder helps uncover suspicious
          wallet interconnections and supports a healthy crypto ecosystem.
        </p>
        <router-link to="/home" class="px-8 py-3 bg-blue-600 hover:bg-blue-700 rounded-xl text-lg font-semibold transition">
          Get Started
        </router-link>
      </div>
    </section>

    <!-- About Section -->
    <section class="h-screen flex items-center justify-center text-center px-6 bg-gray-900 snap-start">
      <div :ref="setAnimRefs" class="max-w-4xl opacity-0 translate-y-10 transition-all duration-700">
        <h2 class="text-3xl font-bold mb-6">Why White Binder?</h2>
        <p class="text-gray-400 text-base leading-relaxed">
          The rise of online gambling using cryptocurrencies poses a challenge for regulators and the public.
          Unfortunately, there are limited open tools to analyze wallet transactions and detect suspicious patterns.
          White Binder was created to fill this gap by providing a transparent, open-source solution for blockchain investigation.
        </p>
      </div>
    </section>

    <!-- Features Section -->
    <section class="h-screen flex items-center justify-center text-center px-6 bg-gray-800 snap-start">
      <div :ref="setAnimRefs" class="w-full max-w-6xl opacity-0 translate-y-10 transition-all duration-700">
        <h2 class="text-3xl font-bold mb-10">Key Features</h2>
        <div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-3">
          <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
            <h3 class="text-xl font-semibold mb-3">Wallet Analytics</h3>
            <p class="text-gray-400 text-sm">Analyze crypto wallets to detect gambling-related activities through transaction patterns.</p>
          </div>
          <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
            <h3 class="text-xl font-semibold mb-3">Graph Visualization</h3>
            <p class="text-gray-400 text-sm">Explore wallet interconnections with interactive network graphs and clustering analysis.</p>
          </div>
          <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
            <h3 class="text-xl font-semibold mb-3">Risk Detection</h3>
            <p class="text-gray-400 text-sm">Automatically flag suspicious wallets with risk scoring (low, medium, high).</p>
          </div>
          <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
            <h3 class="text-xl font-semibold mb-3">Reports</h3>
            <p class="text-gray-400 text-sm">Generate detailed reports for institutions, regulators, and researchers.</p>
          </div>
          <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
            <h3 class="text-xl font-semibold mb-3">Modular Design</h3>
            <p class="text-gray-400 text-sm">Built modularly and ready to integrate real-time data from Ethereum and Tron.</p>
          </div>
          <div class="bg-gray-900 p-6 rounded-2xl shadow-lg hover:shadow-xl transition">
            <h3 class="text-xl font-semibold mb-3">Open Source</h3>
            <p class="text-gray-400 text-sm">Lightweight, customizable, and open for the public, researchers, and regulators.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- How It Works Section -->
    <section class="h-screen flex items-center justify-center text-center px-6 bg-gray-900 snap-start">
      <div :ref="setAnimRefs" class="max-w-5xl w-full opacity-0 translate-y-10 transition-all duration-700">
        <h2 class="text-3xl font-bold mb-10">How It Works</h2>
        <div class="grid md:grid-cols-3 gap-8">
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
      </div>
    </section>

    <!-- CTA Section -->
    <section class="h-screen flex items-center justify-center text-center px-6 snap-start">
      <div :ref="setAnimRefs" class="opacity-0 translate-y-10 transition-all duration-700">
        <h2 class="text-3xl font-bold mb-6">Start Exploring Wallet Networks</h2>
        <p class="text-gray-400 max-w-2xl mx-auto mb-8">
          Join White Binder and uncover the hidden connections in blockchain transactions. 
          Help build a safer, more transparent crypto ecosystem.
        </p>
        <router-link to="/home" class="px-8 py-3 bg-blue-600 hover:bg-blue-700 rounded-xl text-lg font-semibold transition">
          Get Started Now
        </router-link>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'LandingPage',
  data() {
    return {
      currentSection: 0,
      animRefs: [],      
      sectionEls: [],   
      isAnimating: false, 
      lockMs: 700
    }
  },
  methods: {
    setAnimRefs(el) {
      if (el) this.animRefs.push(el)
    },
    scrollToSection(index) {
      if (index < 0 || index >= this.sectionEls.length) return
      this.currentSection = index
      this.isAnimating = true
      this.sectionEls[index].scrollIntoView({ behavior: 'smooth' })

      setTimeout(() => { this.isAnimating = false }, this.lockMs)
    },
    handleWheel(e) {
      e.preventDefault()
      
      if (this.isAnimating) return
      const dir = Math.sign(e.deltaY)
      if (dir > 0) this.scrollToSection(this.currentSection + 1)
      else if (dir < 0) this.scrollToSection(this.currentSection - 1)
    },
    handleKey(e) {
      // keyboard navigation
      const nextKeys = ['ArrowDown', 'PageDown', 'Space']
      const prevKeys = ['ArrowUp', 'PageUp']
      if (nextKeys.includes(e.code) || nextKeys.includes(e.key)) {
        e.preventDefault()
        if (!this.isAnimating) this.scrollToSection(this.currentSection + 1)
      } else if (prevKeys.includes(e.code) || prevKeys.includes(e.key) || (e.code === 'Space' && e.shiftKey)) {
        e.preventDefault()
        if (!this.isAnimating) this.scrollToSection(this.currentSection - 1)
      }
    }
  },
  mounted() {
    const container = this.$refs.container
    this.sectionEls = Array.from(container.querySelectorAll('section'))

    // Observer untuk animasi fade-in (wrapper di dalam section)
    const animObserver = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.remove('opacity-0', 'translate-y-10')
            entry.target.classList.add('opacity-100', 'translate-y-0')
            animObserver.unobserve(entry.target)
          }
        })
      },
      { root: container, threshold: 0.2 }
    )
    this.animRefs.forEach((el) => animObserver.observe(el))

    // Observer untuk update currentSection yang stabil
    const sectionObserver = new IntersectionObserver(
      (entries) => {
        // pilih entry dengan intersectionRatio terbesar
        const visible = entries
          .filter(e => e.isIntersecting)
          .sort((a, b) => b.intersectionRatio - a.intersectionRatio)[0]
        if (visible) {
          const idx = this.sectionEls.indexOf(visible.target)
          if (idx !== -1) this.currentSection = idx
        }
      },
      { root: container, threshold: [0.55] } // lebih dari setengah layar dianggap aktif
    )
    this.sectionEls.forEach((el) => sectionObserver.observe(el))

    // Dengarkan wheel pada CONTAINER (bukan window) + non-passive agar bisa preventDefault
    container.addEventListener('wheel', this.handleWheel, { passive: false })

    // Keyboard navigation
    window.addEventListener('keydown', this.handleKey, { passive: false })
  },
  beforeUnmount() {
    const container = this.$refs.container
    if (container) container.removeEventListener('wheel', this.handleWheel)
    window.removeEventListener('keydown', this.handleKey)
  }
}
</script>

<style scoped>
.landing-container {
  scrollbar-width: none;      /* Firefox */
  -ms-overflow-style: none;   /* IE/Edge */
}
.landing-container::-webkit-scrollbar {
  display: none;              /* Chrome, Safari */
}
</style>
