<template>
  <div class="m-3">
    <b-table
      striped
      hover
      :fields="fields"
      :items="items"
      :per-page="perPage"
      :current-page="currentPage"
      bordered
    >
      <template #cell(action)="data">
        <b-button
          class="mx-2"
          @click="get_user_by_id(data.item)"
          v-b-modal.user_edit_modal
          pill
          variant="outline-success"
        >
          <span class="material-icons"> edit </span>
        </b-button>

        <b-button
          class="mx-2"
          @click="delete_user(data.item)"
          pill
          variant="outline-danger"
        >
          <span class="material-icons"> delete_forever </span>
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
  mounted() {
    this.loadlist();

    this.timer = setInterval(() => {
      this.loadlist();
    }, 2000);
  },

  data() {
    return {
      items: [],
      fields: ["id", "name", "email", "action"],
      errors: {},
      file: {},
      loading: false,

      editUser: {
        id: null,
        name: null,
      },
      perPage: 10,
      currentPage: 1,
      animate: true,

      progress_value: 0,
    };
  },
  methods: {
    loadlist() {
      axios.get("users").then((resp) => {
        this.items = resp.data.user;
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
