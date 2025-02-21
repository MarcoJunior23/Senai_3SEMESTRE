
export Class Device = {
    nome: string = "";
    state: boolean = false;
    color: String = "827d85";
    
}

export type Places = {
    nome: string = "";
    devices: Array<Device> = []
}