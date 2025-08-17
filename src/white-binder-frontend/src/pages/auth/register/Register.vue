<template>
  <div class="flex items-center justify-center min-h-screen bg-[#0F1724]">
    <div class="bg-gray-800 p-8 rounded-xl shadow-lg w-full max-w-md">
      <h2 class="text-2xl font-bold text-white mb-6 text-center">Register</h2>

      <!-- Form Register -->
      <form @submit.prevent="registerUser" class="space-y-4">
        <div>
          <label class="block text-sm text-gray-300 mb-1">Username</label>
          <input
            v-model="username"
            type="text"
            class="w-full px-4 py-2 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-green-500"
            placeholder="Enter username"
          />
        </div>

        <div>
          <label class="block text-sm text-gray-300 mb-1">Password</label>
          <input
            v-model="password"
            type="password"
            class="w-full px-4 py-2 rounded-md bg-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-green-500"
            placeholder="Enter password"
          />
        </div>

        <button
          type="submit"
          class="w-full bg-green-600 hover:bg-green-700 text-white py-2 rounded-md font-semibold"
        >
          Register
        </button>
      </form>

      <!-- Feedback -->
      <p v-if="message" class="mt-4 text-center text-gray-300">{{ message }}</p>

      <!-- Link ke Login -->
      <p class="mt-4 text-center text-sm text-gray-400">
        Already have an account?
        <router-link to="/login" class="text-blue-400 hover:underline">Login here</router-link>
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

async function registerUser() {
  if (!username.value || !password.value) {
    message.value = 'Username dan password wajib diisi!'
    return
  }

  try {
    const result = await whitebinder.register(username.value, password.value)

    if (result.toLowerCase().includes('success')) {
      message.value = 'Register berhasil! Mengalihkan ke login...'
      setTimeout(() => {
        router.push({ name: 'login' })
      }, 1500)
    } else {
      message.value = result // misalnya "Username already exists"
    }
  } catch (err) {
    console.error('Register gagal:', err)
    message.value = 'Terjadi error saat register.'
  }
}
</script>
