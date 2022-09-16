<template>
  <div class="app">
    <Sidebar :smallMenu="smallMenu" v-if="!['Login', 'Register'].includes($route.name)" />

    <div class="main">
      <Header :users="users" v-if="!['Login', 'Register'].includes($route.name)" />
      <div class="main-content">
        <router-view></router-view>
      </div>
      <Footer v-if="!['Login', 'Register'].includes($route.name)" />
    </div>
  </div>
</template>

<script>
import Sidebar from "./common/sidebar.vue";
import Header from "./common/header.vue";
import Footer from "./common/footer.vue";

export default {
  data() {
    return {
      smallMenu: false,
      users: {
        profile: "",
        name: "",
        user_role: "",
      },
    };
  },
  components: {
    Sidebar,
    Header,
    Footer,
  },
};
</script>

<style lang="scss">
:root {
  --light: ;
  --dark: #293462;
  --primary: #f5eddc;
  --secondary: #cfd2cf;
  --white: #fff;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Fana sans", sans-serif, "Times New Roman", Times, serif;
}

.app {
  display: flex;

  .main {
    flex: 1 1 0;
  }
}
</style>
