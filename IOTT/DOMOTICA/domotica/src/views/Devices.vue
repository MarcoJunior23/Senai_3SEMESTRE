<script setup lang="ts">
    import { Environment } from "@/models/devices";
    import { reactive, ref   } from 'vue';

    const Environments = reactive()

    const sala: Environment = {
        name: 'Sala de Estar',
        devices: [
{
    name: 'Ar condicionado',
    state: false,
    color: '#3266a8'
},
{
    name: 'Smart TV',
    state: true,
    color: '#3266a8'
},
{
    name: 'Iluminação',
    state: false,
    color: '#3266a8'
},
     
                 ]
    }
</script>

<template>
    <h1>Devices Page!</h1>
    {{ sala }}
</template>

<style scoped lang="scss">

</style>