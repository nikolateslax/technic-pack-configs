// === VARIABLES ===
val GoldCircuit = <appliedenergistics2:item.ItemMultiMaterial:22>;
val CalculationCircuit = <appliedenergistics2:item.ItemMultiMaterial:23>;
val EngineeringCircuit = <appliedenergistics2:item.ItemMultiMaterial:24>;

val StorageComponent1K = <appliedenergistics2:item.ItemMultiMaterial:35>;
val StorageComponent4K = <appliedenergistics2:item.ItemMultiMaterial:36>;
val StorageComponent16K = <appliedenergistics2:item.ItemMultiMaterial:37>;
val StorageComponent64K = <appliedenergistics2:item.ItemMultiMaterial:38>;
val StorageComponent256K = <extracells:storage.component>;
val StorageComponent1024K = <extracells:storage.component:1>;
val StorageComponent4096K = <extracells:storage.component:2>;
val StorageComponent16384K = <extracells:storage.component:3>;

val FluidComponent1K = <extracells:storage.component:4>;
val FluidComponent4K = <extracells:storage.component:5>;
val FluidComponent16K = <extracells:storage.component:6>;
val FluidComponent64K = <extracells:storage.component:7>;
val FluidComponent256K = <extracells:storage.component:8>;
val FluidComponent1024K = <extracells:storage.component:9>;
val FluidComponent4096K = <extracells:storage.component:10>;

val Storage1K = <appliedenergistics2:item.ItemBasicStorageCell.1k>;
val Storage4K = <appliedenergistics2:item.ItemBasicStorageCell.4k>;
val Storage16K = <appliedenergistics2:item.ItemBasicStorageCell.16k>;
val Storage64K = <appliedenergistics2:item.ItemBasicStorageCell.64k>;
val Storage256K = <extracells:storage.physical>;
val Storage1024K = <extracells:storage.physical:1>;
val Storage4096K = <extracells:storage.physical:2>;
val Storage16384K = <extracells:storage.physical:3>;

val FluidStorage1K = <extracells:storage.fluid>;
val FluidStorage4K = <extracells:storage.fluid:1>;
val FluidStorage16K = <extracells:storage.fluid:2>;
val FluidStorage64K = <extracells:storage.fluid:3>;
val FluidStorage256K = <extracells:storage.fluid:4>;
val FluidStorage1024K = <extracells:storage.fluid:5>;
val FluidStorage4096K = <extracells:storage.fluid:6>;

val StorageHousing = <appliedenergistics2:item.ItemMultiMaterial:39>;
val AdvStorageHousing = <extracells:storage.casing>;
val FluidStorageHousing = <extracells:storage.casing:1>;
val EssentiaStorageHousing = <thaumicenergistics:storage.casing>;

val PCB = <ore:oc:materialCircuitBoardPrinted>;
val Microchip = <ore:oc:circuitChip1>;
val CardBase = <ore:oc:materialCard>;
val ComponentBus = <ore:oc:componentBus1>;
val DiskPlatter = <ore:oc:materialDisk>;

val CertusTank = <extracells:certustank>;
val EssentiaTank = <Thaumcraft:blockEssentiaReservoir>;

val Steel = <ore:ingotSteel>;

// === REMOVE EXISTING RECIPES ===
recipes.remove(StorageComponent1K);
recipes.remove(StorageComponent4K);
recipes.remove(StorageComponent16K);
recipes.remove(StorageComponent64K);
recipes.remove(StorageComponent256K);
recipes.remove(StorageComponent1024K);
recipes.remove(StorageComponent4096K);
recipes.remove(StorageComponent16384K);

recipes.remove(FluidComponent1K);
recipes.remove(FluidComponent4K);
recipes.remove(FluidComponent16K);
recipes.remove(FluidComponent64K);
recipes.remove(FluidComponent256K);
recipes.remove(FluidComponent1024K);
recipes.remove(FluidComponent4096K);

recipes.remove(Storage1K);
recipes.remove(Storage4K);
recipes.remove(Storage16K);
recipes.remove(Storage64K);
recipes.remove(Storage256K);
recipes.remove(Storage1024K);
recipes.remove(Storage4096K);
recipes.remove(Storage16384K);

recipes.remove(FluidStorage1K);
recipes.remove(FluidStorage4K);
recipes.remove(FluidStorage16K);
recipes.remove(FluidStorage64K);
recipes.remove(FluidStorage256K);
recipes.remove(FluidStorage1024K);
recipes.remove(FluidStorage4096K);

recipes.remove(StorageHousing);
recipes.remove(AdvStorageHousing);
recipes.remove(FluidStorageHousing);
recipes.remove(EssentiaStorageHousing);

// === ADD SHAPED RECIPES ===
recipes.addShaped(StorageHousing, [
	[Steel, ComponentBus, Steel],
	[Steel, PCB, Steel],
	[Steel, Steel, Steel]
]);

recipes.addShaped(StorageComponent1K, [
	[Microchip, PCB, Microchip],
	[<ore:chestIron>, PCB, <ore:chestIron>],
	[null, CardBase, null]
]);
recipes.addShaped(StorageComponent4K, [
	[Microchip, PCB, Microchip],
	[StorageComponent1K, PCB, StorageComponent1K],
	[null, StorageComponent1K, null]
]);
recipes.addShaped(StorageComponent16K, [
	[Microchip, PCB, Microchip],
	[StorageComponent4K, PCB, StorageComponent4K],
	[null, StorageComponent4K, null]
]);
recipes.addShaped(StorageComponent64K, [
	[Microchip, PCB, Microchip],
	[StorageComponent16K, PCB, StorageComponent16K],
	[null, StorageComponent16K, null]
]);
recipes.addShaped(StorageComponent256K, [
	[Microchip, PCB, Microchip],
	[StorageComponent64K, PCB, StorageComponent64K],
	[null, StorageComponent64K, null]
]);
recipes.addShaped(StorageComponent1024K, [
	[Microchip, PCB, Microchip],
	[StorageComponent256K, PCB, StorageComponent256K],
	[null, StorageComponent256K, null]
]);
recipes.addShaped(StorageComponent4096K, [
	[Microchip, PCB, Microchip],
	[StorageComponent1024K, PCB, StorageComponent1024K],
	[null, StorageComponent1024K, null]
]);
recipes.addShaped(StorageComponent16384K, [
	[Microchip, PCB, Microchip],
	[StorageComponent4096K, PCB, StorageComponent4096K],
	[null, StorageComponent4096K, null]
]);

recipes.addShaped(FluidComponent1K, [
	[Microchip, PCB, Microchip],
	[CertusTank, PCB, CertusTank],
	[null, CardBase, null]
]);
recipes.addShaped(FluidComponent4K, [
	[Microchip, PCB, Microchip],
	[FluidComponent1K, PCB, FluidComponent1K],
	[null, FluidComponent1K, null]
]);
recipes.addShaped(FluidComponent16K, [
	[Microchip, PCB, Microchip],
	[FluidComponent4K, PCB, FluidComponent4K],
	[null, FluidComponent4K, null]
]);
recipes.addShaped(FluidComponent64K, [
	[Microchip, PCB, Microchip],
	[FluidComponent16K, PCB, FluidComponent16K],
	[null, FluidComponent16K, null]
]);
recipes.addShaped(FluidComponent256K, [
	[Microchip, PCB, Microchip],
	[FluidComponent64K, PCB, FluidComponent64K],
	[null, FluidComponent64K, null]
]);
recipes.addShaped(FluidComponent1024K, [
	[Microchip, PCB, Microchip],
	[FluidComponent256K, PCB, FluidComponent256K],
	[null, FluidComponent256K, null]
]);
recipes.addShaped(FluidComponent4096K, [
	[Microchip, PCB, Microchip],
	[FluidComponent1024K, PCB, FluidComponent1024K],
	[null, FluidComponent1024K, null]
]);

// === ADD SHAPELESS RECIPES ===
recipes.addShapeless(AdvStorageHousing, [StorageHousing, CalculationCircuit]);
recipes.addShapeless(FluidStorageHousing, [StorageHousing, CertusTank]);
recipes.addShapeless(EssentiaStorageHousing, [StorageHousing, EssentiaTank]);

recipes.addShapeless(Storage1K, [StorageHousing, StorageComponent1K]);
recipes.addShapeless(Storage4K, [StorageHousing, StorageComponent4K]);
recipes.addShapeless(Storage16K, [StorageHousing, StorageComponent16K]);
recipes.addShapeless(Storage64K, [StorageHousing, StorageComponent64K]);
recipes.addShapeless(Storage256K, [AdvStorageHousing, StorageComponent256K]);
recipes.addShapeless(Storage1024K, [AdvStorageHousing, StorageComponent1024K]);
recipes.addShapeless(Storage4096K, [AdvStorageHousing, StorageComponent4096K]);
recipes.addShapeless(Storage16384K, [AdvStorageHousing, StorageComponent16384K]);

recipes.addShapeless(FluidStorage1K, [FluidStorageHousing, FluidComponent1K]);
recipes.addShapeless(FluidStorage4K, [FluidStorageHousing, FluidComponent4K]);
recipes.addShapeless(FluidStorage16K, [FluidStorageHousing, FluidComponent16K]);
recipes.addShapeless(FluidStorage64K, [FluidStorageHousing, FluidComponent64K]);
recipes.addShapeless(FluidStorage256K, [FluidStorageHousing, FluidComponent256K]);
recipes.addShapeless(FluidStorage1024K, [FluidStorageHousing, FluidComponent1024K]);
recipes.addShapeless(FluidStorage4096K, [FluidStorageHousing, FluidComponent4096K]);