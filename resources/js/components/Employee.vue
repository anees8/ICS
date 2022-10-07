<template>
  <div class="m-3">
    <b-modal ref="modal" id="user_edit_modal" centered title="Edit User">
      <form @submit.stop.prevent="updateuserForm" enctype="multipart/form-data">
        <b-form-group id="input-group-1" label-for="input-1">
          <b-form-input
            id="input-1"
            v-model="editUser.name"
            type="text"
            placeholder="User Name"
            required
          >
          </b-form-input>

          <span v-if="errors.name" class="text-danger">{{ errors.name[0] }}</span>
        </b-form-group>

        <b-form-select
          v-model="editUser.role"
          :options="options"
          class="mb-3"
          value-field="role_id"
          text-field="role_name"
          disabled-field="notEnabled"
        ></b-form-select>
      </form>

      <template #modal-footer="{ cancel }">
        <b-button variant="outline-secondary" @click="cancel()"> Cancel </b-button>
        <b-button variant="outline-primary" @click="handleUpdate()">
          Update User
        </b-button>
      </template>
    </b-modal>

    <div class="my-3 d-flex align-items-center">
      <b-button v-b-modal.user_add_modal class="ml-auto" pill variant="outline-secondary"
        >Add User</b-button
      >

      <b-modal id="user_add_modal" centered title="Add User">
        <template #modal-footer="{ cancel }">
          <b-button variant="outline-secondary" @click="cancel()"> Cancel </b-button>
          <b-button variant="outline-primary" @click="handleAdd()">
            Update User
          </b-button>
        </template>
      </b-modal>
    </div>
    <b-table
      :fields="fields"
      :items="items"
      :per-page="perPage"
      :current-page="currentPage"
      bordered
      striped
      hover
    >
      <template #cell(action)="data">
        <b-button
          class="rounded-circle p-2"
          @click="get_user_by_id(data.item)"
          v-b-modal.user_edit_modal
          variant="outline-success"
        >
          <i class="material-icons"> edit </i>
        </b-button>

        <b-button
          class="rounded-circle p-2"
          @click="delete_user(data.item)"
          variant="outline-danger"
        >
          <i class="material-icons"> delete_forever </i>
        </b-button>
      </template>
    </b-table>
    <b-pagination
      v-model="currentPage"
      :total-rows="rows"
      :per-page="perPage"
    ></b-pagination>
  </div>
</template>

<script>
export default {
  created() {
    this.loadlist();

    this.timer = setInterval(() => {
      this.loadlist();
    }, 3000);
  },

  data() {
    return {
      items: [],
      fields: [
        "id",
        "employee_id",
        "name",
        "job",
        "skill",
        "dateofbirth",
        "email",
        "phone",
        "salary",
        "join_date",
        "action",
      ],
      errors: {},
      file: {},
      loading: false,
      options: [],
      editUser: {
        id: null,
        name: null,
        role: null,
      },
      perPage: 10,
      currentPage: 1,
      animate: true,

      progress_value: 0,
    };
  },
  methods: {
    loadlist() {
      axios.get("employee").then((resp) => {
        this.items = resp.data.employee;
      });
    },
    handleOk(bvModalEvent) {
      bvModalEvent.preventDefault();
      this.submitForm();
    },
    get_user_by_id(item) {
      axios.get("employee/" + item.id).then((res) => {
        this.errors = {};
        this.editUser.id = res.data.user.id;
        this.editUser.name = res.data.user.name;
      });
    },
    handleUpdate() {
      this.updateuserForm();
    },
    updateuserForm() {
      const id = this.editUser.id;
      const update_user = {
        name: this.editUser.name,
      };

      axios
        .put("employee/" + id, update_user)
        .then((res) => {
          this.$root.$emit("bv::hide::modal", "user_edit_modal", "#btnShow");
          this.loadlist();
          this.errors = {};
        })
        .catch((error) => {
          this.errors = error.response.data.errors;
        });
    },

    hideModal() {
      this.$root.$emit("bv::hide::modal", "modal-1", "#btnShow");
    },

    delete_user(item) {
      Swal.fire({
        title: "Are you sure?",
        text: "Do you want to Delete this User : " + item.name,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!",
      }).then((result) => {
        if (result.isConfirmed) {
          axios
            .delete("employee/" + item.id)
            .then((res) => {
              this.errors = {};
              this.loadlist();
              Swal.fire("Deleted!", "Your file has been deleted.", "success");
            })
            .catch((error) => {
              this.errors = error.response.data.errors;
            });
        }
      });
    },
  },
  computed: {
    rows() {
      return this.items.length;
    },
  },
};
</script>

<style>
button.close {
  border: 0;
}
</style>
