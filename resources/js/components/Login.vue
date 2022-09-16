<template>
  <b-container fluid>
    <b-row class="vh-100" align-h="center" align-v="center">
      <b-col md="4">
        <b-card
          header="Login"
          header-text-variant="primary"
          align="center"
          body-class="text-start"
        >
          <b-card-body>
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
                  required
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
                  v-model="form.name"
                  type="password"
                  placeholder="Enter Password"
                  required
                ></b-form-input>
              </b-form-group>

              <b-button
                pill
                type="submit"
                class="my-3 d-flex"
                variant="outline-primary"
                align-h="center"
                align-v="center"
              >
                <span class="material-icons mx-2">login</span>Login</b-button
              >
            </b-form>
          </b-card-body>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
export default {
  data() {
    return {
      form: {
        email: "",
        name: "",
      },
      show: true,
      errors: [],
    };
  },
  methods: {
    onSubmit(event) {
      event.preventDefault();
      axios
        .post("/api/login", this.form)
        .then(() => {})
        .catch((error) => {
          this.error = error.response.data.error;
        });
      alert(JSON.stringify(this.form));
    },
    onReset(event) {
      event.preventDefault();
      // Reset our form values
      this.form.email = "";
      this.form.name = "";
      // Trick to reset/clear native browser form validation state
      this.show = false;
      this.$nextTick(() => {
        this.show = true;
      });
    },
  },
};
</script>
