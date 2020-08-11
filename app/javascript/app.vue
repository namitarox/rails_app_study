<template>
  <v-app id="inspire">
    <v-main>
      <router-view></router-view>
    </v-main>
  </v-app>
</template>

<script>
  export default {
    props: {
      source: String,
    },
    data: () => ({
      drawer: null,
    }),
    methods: {
      logout() {
        if (confirm("ログアウトしますか？")) {
          this.$store.dispatch('auth/logout')
        }
      }
    }
  }
</script>
