<template>
  <div class="kernelmail">
    <div class="container">
      <div class="row">
        <div class="col">
          <h2>{{ subject }}</h2>
        </div>
        <div class="col">
          <b>From:</b> {{ from }} <br>
          <b>Date:</b> {{ date }}
        </div>
      </div>
      <div class="row">
        <p style="white-space: pre-line" class="font-monospace">>{{ text }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "KernelMail",
  props: ["to", "from", "subject", "date", "text"],
};
</script>
