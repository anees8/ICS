<template>
  <div>
    <div id="notfound">
      <div class="notfound">
        <div class="notfound-404">
          <h1>4<span>0</span>4</h1>
        </div>

        <p>
          The page you are looking for might have been removed had its name changed or is
          temporarily unavailable.
        </p>
        <b-link class="btn" variant="outline-primary" @click="gohome">Home</b-link>
        <b-link class="btn" variant="outline-primary" @click="goBack">Back</b-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gohome() {
      this.$router.push("/");
    },
  },
};
</script>
<style lang="scss" scoped>
$color_1: #fedb39;

$color_2: #f5eddc;
$color_3: #fedb39;
$font-family_1: "Josefin Sans", sans-serif;
$background-color_1: #293462;
$border-color_1: #fedb39;

* {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  padding: 0;
  margin: 0;
}
#notfound {
  position: relative;
  height: 100vh;
  background-color: $background-color_1;
  .notfound {
    position: relative;
    left: 50%;
    top: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
  }
}
.notfound {
  max-width: 460px;
  width: 100%;
  text-align: center;
  line-height: 1;
  .notfound-404 {
    height: 158px;
    line-height: 153px;
    h1 {
      font-family: $font-family_1;
      color: $color_1;
      font-size: 220px;
      letter-spacing: 10px;
      margin: 0px;
      font-weight: 700;
      text-shadow: 2px 2px 0px #d61c4e, -2px -2px 0px #d61c4e;
      > span {
        text-shadow: 2px 2px 0px #d61c4e, -2px -2px 0px #d61c4e, 0px 0px 8px #d61c4e;
      }
    }
  }
  p {
    font-family: $font-family_1;
    color: $color_2;
    font-size: 16px;
    font-weight: 400;
    margin-top: 100px;
    margin-bottom: 15px;
  }
  a {
    font-family: $font-family_1;
    font-size: 14px;
    text-decoration: none;
    text-transform: uppercase;
    background: transparent;
    color: $color_2;
    border: 2px solid #c9c9c9;
    display: inline-block;
    padding: 10px 25px;
    font-weight: 700;
    -webkit-transition: 0.2s all;
    transition: 0.2s all;
    &:hover {
      color: $color_3;
      border-color: $border-color_1;
    }
  }
}
@media only screen and (max-width: 480px) {
  .notfound {
    .notfound-404 {
      height: 122px;
      line-height: 122px;
      h1 {
        font-size: 122px;
      }
    }
  }
}
</style>
