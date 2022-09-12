<template>
  <div>
    <header>
      <div>
        <b-dropdown
          size="sm"
          id="profile"
          variant="link"
          toggle-class="text-decoration-none "
          class="float-end mx-5"
          no-caret
        >
          <template #button-content>
            <div class="profile d-flex">
              <b-img
                thumbnail
                :src="users.profile ? users.profile : '/profile/no-image.png'"
                rounded="circle"
                class="user_profile"
              />
              <div class="flex-column-1 ms-4">
                <div>
                  {{ users.name ? users.name : "ANEES AHMED" }}
                </div>
                <div>
                  {{ users.user_role ? users.user_role : "Admin" }}
                </div>
              </div>
            </div>
          </template>
          <b-dropdown-item to="/account">Account</b-dropdown-item>
          <b-dropdown-divider></b-dropdown-divider>
          <b-dropdown-item to="/logout">Logout</b-dropdown-item>
        </b-dropdown>
      </div>
    </header>
  </div>
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
  border-bottom: 1px solid var(--dark);
  background-color: var(--dark);
  .profile {
    color: var(--secondary);
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
