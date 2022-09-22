<template>
  <div>
    <header>
      <div>
        <b-dropdown
          size="sm"
          id="profile"
          variant="link"
          toggle-class="text-decoration-none"
          class="shadow-none float-end mx-5 d-inline-block border-0"
          no-caret
        >
          <template #button-content>
            <div class="profile d-flex shadow-none" style="box-shadow: none !important">
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

          <b-dropdown-item to="/profile">
            <div class="label d-flex justify-content-between align-items-center">
              <div class="left d-flex align-items-center">
                <i class="material-icons">account_circle</i>
                <span>Profile</span>
              </div>
            </div></b-dropdown-item
          >
          <b-dropdown-divider></b-dropdown-divider>
          <b-dropdown-item>
            <div class="label d-flex justify-content-between align-items-center">
              <div class="left d-flex align-items-center" @click="logout()">
                <i class="material-icons">logout</i>
                <span>Logout</span>
              </div>
            </div>
          </b-dropdown-item>
        </b-dropdown>
      </div>
    </header>
  </div>
</template>
<script>
import Auth from "../../Auth.js";
export default {
  props: {
    users: { type: Object },
  },

  methods: {
    logout() {
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
};
</script>
<style lang="scss" scoped>
header {
  height: 4rem;
  width: 100%;
  border-bottom: 1px solid var(--dark);
  background-color: var(--dark);
  .profile {
    color: var(--secondary);
    padding: 0.4rem;
    .user_profile {
      height: 2.5rem;
      align-items: center;

      margin: 0;
      border: 1;
    }

    .img-thumbnail {
      border: 1px solid var(--primary);
    }
  }
  .label {
    white-space: nowrap;
    user-select: none;
    box-sizing: border-box;
    color: var(--dark);

    .material-icons {
      font-size: 1.5rem;
      color: var(--dark);
    }
  }
}
</style>
