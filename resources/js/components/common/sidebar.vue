<template>
  <aside :class="{ 'small-menu': smallMenu }">
    <div class="logo d-flex justify-content-between align-items-center">
      <!-- <h2>ICS</h2> -->
      <img v-if="!smallMenu" src="logo/logo.png" height="50" />
      <img v-if="smallMenu" src="logo/logo.png" width="75" />

      <i class="material-icons" @click="smallMenu = !smallMenu">menu</i>
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
    />
  </aside>
</template>
<script>
import MenuItem from "./menu/menuItem.vue";

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
        url: "/logout",
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
  width: 16rem;

  background-color: var(--dark);
  .logo {
    color: var(--light);
    height: 3.5rem;
    padding: 0.313rem;
    i {
      color: var(--primary);
    }
  }

  &.small-menu {
    .logo {
      width: 5rem;
      height: fit-content;
      display: flex;

      flex-direction: column;
      overflow: hidden;
    }
    overflow: inherit;
    width: 5rem;
  }
}
</style>
