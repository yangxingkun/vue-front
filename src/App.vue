<template>
  <div id="app">
    <ul>
      <li v-for="user in users" :key="user.name">
        {{ user.name }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "App",
  components: {},
  data() {
    return {
      users: [],
    };
  },
  methods: {
    fetchData() {
      axios.get("http://localhost:3000/api/users").then((response) => {
        this.users = response.data;
        console.log(response, "pppp");
      });
    },
  },
  mounted() {
    this.fetchData();
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
