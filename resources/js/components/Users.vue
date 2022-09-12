<template>
  <b-container fluid
    ><b-table
      striped
      hover
      :fields="fields"
      :items="items"
      :per-page="perPage"
      :current-page="currentPage"
      bordered
      responsive
      small
    ></b-table>
    <b-pagination
      v-model="currentPage"
      :total-rows="rows"
      :per-page="perPage"
      first-text="First"
      prev-text="Prev"
      next-text="Next"
      last-text="Last"
    ></b-pagination>
  </b-container>
</template>

<script>
export default {
  data() {
    return {
      currentPage: 1,
      perPage: 10,
      fields: [
        {
          key: "last_name",
          isSortable: true,
        },
        {
          key: "first_name",
          sortable: false,
        },
        {
          key: "age",
          label: "Person age",
          sortable: true,
        },
      ],
      items: [
        { isActive: true, age: 40, first_name: "Dickerson", last_name: "Macdonald" },
        { isActive: false, age: 21, first_name: "Larsen", last_name: "Shaw" },
        { isActive: false, age: 89, first_name: "Geneva", last_name: "Wilson" },
        { isActive: true, age: 38, first_name: "Jami", last_name: "Carney" },
      ],
    };
  },
  computed: {
    rows() {
      return this.items.length;
    },
  },
};
</script>
