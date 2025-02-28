<script setup lang="ts">
    import { Environment } from "@/models/devices";
    import { reactive, ref   } from 'vue';


    const environments: Array<Environment> = reactive([]);
    
    
    const ar: Device = reactive(new Device());
    ar.name = 'Ar condicionado';
    ar.color = '#ba1307'

    const tv: Device = reactive(new Device());
    tv.name = 'Smart TV';
    tv.color = '#f2f244'
    tv.state = true;

    const iluminacao: Device = reactive(new Device());
    iluminacao.name = 'Iluminação';
    iluminacao.color = '#00eddd'

    const sala: Environment = reactive(new Environment());
    sala.name = "Sala";
    sala.devices = [ar, tv,iluminacao];

    environments.push(sala);
</script>

<template>  
<main class="flex flex-column">
    <h1>Devices Page</h1>
  <section>

  </section>
</main>
</template>

<style scoped lang="scss">

</style>