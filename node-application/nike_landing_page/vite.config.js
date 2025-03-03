import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  root: ".", // ✅ Ensures Vite finds index.html in root
  build: {
    outDir: "dist",
  },
});
