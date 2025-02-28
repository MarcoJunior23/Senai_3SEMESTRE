export class Device {
    name: string = "";
    state: boolean = false;
    color: string = "#827d85";
    icon: string = "material-symbols-outlined";
}

export class Environment {
    name: string = "";
    devices: Array<Device> = []
}
