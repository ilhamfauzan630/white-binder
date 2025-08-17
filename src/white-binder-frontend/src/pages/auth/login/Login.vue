<template>
  <div class="flex items-center justify-center min-h-screen bg-[#0F1724]">
    <div class="bg-gray-800 p-8 rounded-xl shadow-lg w-full max-w-md">
      <h2 class="text-2xl font-bold text-white mb-6 text-center">Login</h2>

      <!-- Form Login -->
      <form @submit.prevent="loginUser" class="space-y-4">
        <div>
          <label class="block text-sm text-gray-300 mb-1">Username</label>
          <input
            v-model="username"
            type="text"
            class="w-full px-4 py-2 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="Enter username"
          />
        </div>

        <div>
          <label class="block text-sm text-gray-300 mb-1">Password</label>
          <input
            v-model="password"
            type="password"
            class="w-full px-4 py-2 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="Enter password"
          />
        </div>

        <button
          type="submit"
          class="w-full bg-blue-600 hover:bg-blue-700 text-white py-2 rounded-md font-semibold"
        >
          Login
        </button>
      </form>

      <!-- Feedback -->
      <p v-if="message" class="mt-4 text-center text-gray-300">{{ message }}</p>

      <!-- Link ke Register -->
      <p class="mt-4 text-center text-sm text-gray-400">
        Don’t have an account?
        <router-link to="/register" class="text-green-400 hover:underline">Register here</router-link>
      </p>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { useRouter } from 'vue-router'
import whitebinder from '@/dfinity/whitebinder.js'

const username = ref('')
const password = ref('')
const message = ref('')
const router = useRouter()

async function loginUser() {
  if (!username.value || !password.value) {
    message.value = 'Username dan password wajib diisi!'
    return
  }

  try {
    const result = await whitebinder.login(username.value, password.value)

    // contoh: backend balikin string "Login success" kalau berhasil
    if (result.toLowerCase().includes('success')) {
      // Simpan token sederhana (bisa pakai JWT/ID token asli kalau ada)
      localStorage.setItem('token', username.value)

      // redirect ke halaman home
      router.push({ name: 'home' })
    } else {
      message.value = result // misalnya "Invalid username or password"
    }
  } catch (err) {
    console.error('Login gagal:', err)
    message.value = 'Terjadi error saat login.'
  }
}
</script>
