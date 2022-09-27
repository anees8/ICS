<template>
  <div class="menu-item" :class="{ expanded: expanded }">
    <b-link class="text-decoration-none" v-bind:to="url">
      <div
        class="label d-flex justify-content-between align-items-center"
        v-on:click="togggleMenu()"
      >
        <div class="left d-flex align-items-center">
          <i v-if="icon && !smallMenu" class="material-icons">{{ icon }}</i>
          <i
            v-if="icon && smallMenu"
            class="material-icons"
            v-b-tooltip.right="this.label"
            >{{ icon }}</i
          >
          <span v-if="showLabel">{{ label }} </span>
        </div>

        <div v-if="data" class="right">
          <i class="material-icons expand" :class="{ expanded: expanded }">expand_more</i>
        </div>
      </div>
    </b-link>

    <div
      v-show="showChildren"
      class="items-container"
      :class="{ 'small-menu': smallMenu }"
      ref="container"
      :style="{ height: containerHeight }"
    >
      <menu-item
        v-for="(item, index) in data"
        :key="index"
        :label="item.label"
        :icon="item.icon"
        :url="item.url"
        :depth="depth + 0"
        :data="item.children"
        :smallMenu="smallMenu"
      ></menu-item>
    </div>
  </div>
</template>
<script>
export default {
  name: "menu-item",
  data: () => ({ showChildren: false, expanded: false, containerHeight: 0 }),

  props: {
    label: { type: String, required: true },
    icon: { type: String },
    depth: { type: Number, required: true },
    url: { type: String },
    data: { type: Array },
    smallMenu: { type: Boolean },
  },
  computed: {
    showLabel() {
      return this.smallMenu ? this.depth > 0 : true;
    },
  },
  methods: {
    togggleMenu() {
      this.expanded = !this.expanded;
      if (!this.showChildren) {
        this.showChildren = true;
        this.$nextTick(() => {
          this.containerHeight = this.$refs["container"].scrollHeight + "px";
          setTimeout(() => {
            this.containerHeight = "fit-content";
            this.$refs["container"].style.overflow = "visible";
          }, 300);
        });
      } else {
        this.containerHeight = this.$refs["container"].scrollHeight + "px";
        this.$refs["container"].style.overflow = "hidden";
        setTimeout(() => {
          this.containerHeight = 0 + "px";
        }, 10);
        setTimeout(() => {
          this.showChildren = false;
        }, 300);
      }
    },
  },
};
</script>
<style lang="scss" scoped>
.menu-item {
  position: relative;
  width: 100%;
  .router-link-exact-active {
    > div {
      background-color: var(--secondary);
      cursor: pointer;
    }

    .label {
      color: var(--dark);
      i {
        color: var(--dark);
      }
    }
  }

  .label {
    white-space: nowrap;
    user-select: none;
    height: 3rem;
    padding: 0 1.25rem;
    box-sizing: border-box;
    color: var(--primary);

    i {
      padding-right: 0.2rem;
      font-size: 1.5rem;
      color: var(--primary);
      transition: all 0.3s ease;
      &.expand {
        transition: all 0.5s ease;
        font-size: 1.5rem;
        color: var(--primary);

        &.expanded {
          transition: all 0.5s ease;
          transform: rotate(180deg);
        }
      }
    }

    &:hover {
      transition: all 0.5s ease;
      background-color: var(--secondary);
      color: var(--dark);
      cursor: pointer;
      i {
        color: var(--dark);
      }
    }

    &.small-menu {
      transition: all 0.5s ease;
      width: fit-content;
    }
  }

  .items-container {
    transition: all 0.5s ease;

    transition: all;

    &.small-menu {
      transition: all 0.5s ease;

      position: relative;

      .label {
        width: 100%;
      }
    }
  }
}
</style>
