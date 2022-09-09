<template>
  <header>
    <div
      class="profile d-flex align-items-center h-100 float-end"
      data-bs-toggle="dropdown"
    >
      <div class="flex-shrink-0">
        <b-img
          thumbnail
          :src="users.profile ? users.profile : '/profile/no-image.png'"
          rounded="circle"
          class="user_profile"
        />
      </div>
      <div class="flex-column-1 ms-4">
        <div>
          <sapn>{{ users.name ? users.name : "ANEES AHMED" }}</sapn>
        </div>
        <div>
          <sapn>{{ users.user_role ? users.user_role : "Admin" }}</sapn>
        </div>
      </div>
    </div>
    <ul class="dropdown-menu mt-4" style="background-color: var(--primary)">
      <li style="background-color: var(--primary)">
        <b-link class="text-decoration-none dropdown-item" to="">My Account </b-link>
      </li>
      <li><hr class="dropdown-divider" /></li>
      <li>
        <b-link class="text-decoration-none dropdown-item" to="/logout">Logout</b-link>
      </li>
    </ul>
  </header>
</template>
<script>
export default {
  props: {
    users: { type: Object },
  },
};
</script>
<style lang="scss" scoped>
header {
  height: 3.5rem;
  width: 100%;
  padding: 1.5rem;
  border-bottom: 1px solid var(--dark);
  background-color: var(--dark);
  color: var(--secondary);

  .profile {
    margin-right: 3rem;
    .user_profile {
      height: 2.5rem;
      align-items: center;
      padding: 0;
      margin: 0;
      border: 1;
    }

    .img-thumbnail {
      border: 1px solid var(--primary);
    }
  }
}
</style>
