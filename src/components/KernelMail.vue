<template>
  <div class="kernelmail">
    <p>{{ text }}</p>
    <div class="container">
  <div class="row">
    <div class="col">
      From: <p> {{ from }}</p>
    </div>
    <div class="col">
      <h2> {{ subject }}</h2>
    </div>
  </div>
  <div class="row">
      <p>{{ text }}</p>
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
