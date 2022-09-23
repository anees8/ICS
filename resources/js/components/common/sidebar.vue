<template>
  <aside :class="{ 'small-menu': smallMenu }">
    <div class="logo d-flex justify-content-between align-items-center">
      <!-- <h2>ICS</h2> -->
      <img v-if="!smallMenu" src="logo/logo5.png" height="60" />
      <img v-if="smallMenu" src="logo/logo5.png" width="80" />
      <i class="material-icons cursor-pointer" @click="smallMenu = !smallMenu">menu</i>
    </div>

    <hr class="m-0" />
    <MenuItem
      v-for="(item, index) in menuTree"
      :key="index"
      :label="item.label"
      :icon="item.icon"
      :url="item.url"
      :depth="0"
      :data="item.children"
      :smallMenu="smallMenu"
      :logout="item.logout"
    />
  </aside>
</template>
<script>
import MenuItem from "./menu/menuItem.vue";
import Auth from "../../Auth.js";

export default {
  props: {
    smallMenu: { type: Boolean },
  },
  data: () => ({
    menuTree: [
      {
        label: "Home",
        icon: "home",
        url: "/",
      },
      {
        label: "About",

        icon: "visibility",
        url: "/about",
      },
      {
        label: "Users",
        icon: "people",
        children: [
          { label: "Users List", url: "/list_users" },
          { label: "Employee", url: "/list_employee" },
          { label: "Outsource Employee", url: "/list_outsource_employee" },
          { label: "Customer", url: "/list_customer" },
          { label: "Supplier", url: "/list_suplier" },
        ],
      },
      {
        label: "Logout",
        icon: "logout",
        logout: () => {
          axios
            .post("/logout")
            .then(({ data }) => {
              Auth.logout(); //reset local storage
              this.$router.push("/login");
            })
            .catch((error) => {
              console.log(error);
            });
        },
      },
    ],
  }),
  components: {
    MenuItem,
  },
};
</script>
<style lang="scss" scoped>
aside {
  height: 100vh;
  max-height: 100%;
  width: 15rem;
  transition: all 0.5s ease;
  background-color: var(--dark);
  .logo {
    color: var(--light);
    height: 4rem;
    padding: 1rem;
    i {
      color: var(--primary);
    }
  }

  &.small-menu {
    transition: all 0.5s ease;
    .logo {
      width: 5rem;
      height: auto;
      display: flex;

      flex-direction: column;
      overflow: hidden;
      i {
        padding-top: 1rem;
        color: var(--primary);
      }
    }
    overflow: inherit;
    width: 5rem;
  }
}
</style>
