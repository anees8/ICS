<template>
  <div class="app">
    <Sidebar v-if="!['Login', 'Register', 'Error'].includes($route.name)" />

    <div class="main">
      <Header
        :users="users"
        v-if="!['Login', 'Register', 'Error'].includes($route.name)"
      />
      <div class="main-content">
        <router-view></router-view>
      </div>
      <Footer v-if="!['Login', 'Register', 'Error'].includes($route.name)" />
    </div>
  </div>
</template>

<script>
import Auth from "../Auth.js";
import Sidebar from "./common/sidebar.vue";
import Header from "./common/header.vue";
import Footer from "./common/footer.vue";

export default {
  data() {
    return {
      users: {
        profile: "",
        name: "",
        user_role: "",
      },
    };
  },
  created() {
    if (Auth.user) {
      this.loadlist();
    }
    this.timer = setInterval(() => {
      if (Auth.user) {
        this.loadlist();
      }
    }, 3000);
  },
  methods: {
    loadlist() {
      axios.get("me").then((resp) => {
        this.users = resp.data.user;
      });
    },
  },

  components: {
    Sidebar,
    Header,
    Footer,
  },
};
</script>

<style lang="scss">
@import "material-icons/iconfont/material-icons.css";
:root {
  --dark: #293462;
  --light: rgba(41, 52, 98, 0.2);
  --primary: #f5eddc;
  --secondary: #cfd2cf;
  --white: #fff;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: sans-serif, "Times New Roman", Times, serif, "Fana sans";
}
a,
a:hover {
  text-decoration: none !important;
}

.btn:active,
.btn:focus {
  -webkit-box-shadow: none !important;
  box-shadow: none !important;
  outline: none;
}
.dropdown-menu,
.dropdown-item {
  background-color: var(--dark) !important;
}
a.dropdown-item:hover {
  background-color: var(--secondary) !important;
  cursor: pointer;
}
.app {
  display: flex;

  .main {
    flex: 1 1 0;
  }
}
</style>
