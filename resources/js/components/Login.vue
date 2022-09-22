<template>
  <b-container class="login" fluid>
    <b-row class="vh-100" align-h="center" align-v="center">
      <b-col md="4">
        <b-card>
          <b-card-body>
            <div class="d-flex justify-content-around">
              <img src="logo/logo5.png" width="100" />
            </div>

            <b-form @submit="onSubmit" @reset="onReset" v-if="show">
              <b-form-group
                id="input-group-1"
                label="Email address:"
                label-for="input-1"
                class="my-3"
                description="We'll never share your email with anyone else."
              >
                <b-form-input
                  id="input-1"
                  v-model="form.email"
                  type="email"
                  placeholder="Enter email"
                ></b-form-input>
              </b-form-group>

              <b-form-group
                id="input-group-2"
                class="my-3"
                label="Password:"
                label-for="input-2"
              >
                <b-form-input
                  id="input-2"
                  v-model="form.password"
                  type="password"
                  placeholder="Enter Password"
                ></b-form-input>
              </b-form-group>
              <div class="d-flex justify-content-around">
                <b-button
                  pill
                  type="submit"
                  class="d-flex"
                  variant="outline-primary"
                  align-h="center"
                  align-v="center"
                >
                  <span class="material-icons mx-2">login</span>Login</b-button
                >
              </div>
            </b-form>
          </b-card-body>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import Auth from "../Auth.js";

export default {
  data() {
    return {
      form: {
        email: "admin@example.com",
        password: "123456",
      },
      show: true,
      errors: [],
    };
  },
  methods: {
    onSubmit(event) {
      event.preventDefault();
      axios
        .post("/login", this.form)
        .then(({ data }) => {
          Auth.login(data.access_token, data.user); //set local storage
          this.$router.push("/dashboard");
        })
        .catch((error) => {
          console.log(error);
        });
    },
    onReset(event) {
      event.preventDefault();
      // Reset our form values
      this.form.email = "";
      this.form.password = "";
      // Trick to reset/clear native browser form validation state
      this.show = false;
      this.$nextTick(() => {
        this.show = true;
      });
    },
  },
};
</script>
<style lang="scss" scoped>
.login {
  background: var(--dark);
}
</style>
