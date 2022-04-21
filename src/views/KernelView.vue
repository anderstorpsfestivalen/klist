<template>
  <div class="home">
    <KernelMail
      v-for="item in events"
      v-bind:key="item.t"
      v-bind:from="item.From"
      v-bind:to="item.To"
      v-bind:subject="item.Subject"
      v-bind:date="item.Date"
      v-bind:text="item.Text"
      class="recurring"
    ></KernelMail>
  </div>
</template>

<script>
import KernelMail from "@/components/KernelMail";

export default {
  name: "KernelView",
  components: {
    KernelMail,
  },
  data() {
    return {
      events: [],
    };
  },
  created: function () {
    this.connection = new WebSocket(
      "wss://mch.anderstorpsfestivalen.se/kernel/pipe"
    );

    this.connection.onmessage = (event) => {
      let data = JSON.parse(event.data);
      this.events.unshift(data);
    };

  },
};
</script>
