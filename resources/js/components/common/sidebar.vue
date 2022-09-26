<template>
  <aside :class="{ 'small-menu': smallMenu }">
    <div class="logo d-flex justify-content-between align-items-center">
      <!-- <h2>ICS</h2> -->
      <img v-if="!smallMenu" src="logo/logo5.png" height="60" />
      <img v-if="smallMenu" src="logo/logo5.png" width="65" />
      <i class="material-icons cursor-pointer" @click="smallMenu = !smallMenu">
        arrow_back
      </i>
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
          { label: "Users List", icon: "person", url: "/list_users" },
          { label: "Employee", icon: "badge", url: "/list_employee" },
          {
            label: "Outsource Employee",
            icon: "person",
            url: "/list_outsource_employee",
          },
          { label: "Customer", icon: "person", url: "/list_customer" },
          { label: "Supplier", icon: "person", url: "/list_suplier" },
        ],
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

      i {
        transform: rotate(180deg);
        padding-right: 1rem;
        color: var(--primary);
      }
    }
    overflow: inherit;
    width: 5rem;
  }
}
</style>
