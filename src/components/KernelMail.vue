<template>
  <div class="kernelmail">
    <div class="container">
      <div class="row">
        <div class="col font-monospace" style="white-space: pre-line" >
          <b>From:</b> {{ from }} <br />
          <b>Date:</b> {{ date }} <br />
          <b>Subject:</b> {{ subject }}
        </div>
        <div class="col"></div>
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
