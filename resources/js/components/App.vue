<template>
  <div class="app">
    <Sidebar :smallMenu="smallMenu" />

    <div class="main">
      <Header :users="users" />
      <div class="main-content">
        <router-view></router-view>
      </div>
      <Footer />
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
        profile: null,
        name: null,
        user_role: null,
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
    .main-content {
      padding: 2rem;
    }
  }
}
</style>
