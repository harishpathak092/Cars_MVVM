//
//  MockDetailModel.swift
//  Cars
//
//  Created by Harish Pathak on 16/02/22.

import Foundation

// MARK: - MockDetailModel
struct MockDetailModel: Codable {
    var totalNumber, totalPages: Int
    var results: [DetailResult]
}

// MARK: - DetailResult
struct DetailResult: Codable {
    let id, makeID, year: Int
    let makeName, makeNiceName, makeNiceID, modelID: String
    let modelName, modelNiceName, modelNiceID: String
    let modelYearID: Int
    let modelLinkCode: String
    let standardEngine, standardTransmission: StandardEngine
    let transmissionType, engineType, engineCompressorType, engineFuelType: String
    let engineCylinder: Int
    let engineSize: Double
    let numberOfSeats: Int
    let withBluetooth, withNavigationSystem, withHeatedSeats: Bool
    let price: Price
    let trim: Trim
    let categories: Categories
    let categoryValues, niceCategoryValues: [String]
    let modelYear: ModelYear
    let attributeGroups: AttributeGroups
    let squishVins: [SquishVin]
    let subModels: [SubModel]
    let name, niceName, niceID, publicationState: String
    let makeShare: Double
    let standardEquipment, optionalEquipment, usedEquipment, options: [StandardEngine]
    let configurableEquipment: [ConfigurableEquipment]
    let regionRestrictions: [String: [RegionRestriction]]
    let typicallyEquippedSpecifications: [TypicallyEquippedSpecification]
    let shareBySales: Double
    let edTypeCategories: [EdTypeCategory]

    enum CodingKeys: String, CodingKey {
        case id
        case makeID = "makeId"
        case year, makeName, makeNiceName
        case makeNiceID = "makeNiceId"
        case modelID = "modelId"
        case modelName, modelNiceName
        case modelNiceID = "modelNiceId"
        case modelYearID = "modelYearId"
        case modelLinkCode, standardEngine, standardTransmission, transmissionType, engineType, engineCompressorType, engineFuelType, engineCylinder, engineSize, numberOfSeats, withBluetooth, withNavigationSystem, withHeatedSeats, price, trim, categories, categoryValues, niceCategoryValues, modelYear, attributeGroups, squishVins, subModels, name, niceName
        case niceID = "niceId"
        case publicationState, makeShare, standardEquipment, optionalEquipment, usedEquipment, options, configurableEquipment, regionRestrictions, typicallyEquippedSpecifications, shareBySales, edTypeCategories
    }
}

// MARK: - AttributeGroups
struct AttributeGroups: Codable {
    let cargoDimensions: CargoDimensions
    let mobileConnectivity: MobileConnectivity
    let transmissionFeatures: TransmissionFeatures
    let instrumentation: Instrumentation
    let miscExteriorFeatures: MiscExteriorFeatures
    let doors: Doors
    let exteriorLights: ExteriorLights
    let partnerMapping: PartnerMapping
    let tractionStabilityControl: TractionStabilityControl
    let frontPassengerSeat: FrontPassengerSeat
    let mirrors: Mirrors
    let steering: Steering
    let the1StRowSeats: The1StRowSeats
    let interiorDimensions: InteriorDimensions
    let spareTireWheel: SpareTireWheel
    let crashTestRatings: CrashTestRatings
    let powerOutlets: PowerOutlets
    let nciOptionalFacet: NciOptionalFacet
    let exteriorDimensions: ExteriorDimensions
    let windows: Windows
    let steeringWheel: SteeringWheel
    let main: Main
    let childSafety: ChildSafety
    let nciStandardFacet: NciStandardFacet
    let styleInfo: StyleInfo
    let storage: Storage
    let pricing: Pricing
    let parkingAid: ParkingAid
    let seatingConfiguration: SeatingConfiguration
    let airConditioning: AirConditioning
    let differential: Differential
    let consumerGenericFeature: ConsumerGenericFeature
    let seatbelts: Seatbelts
    let suspension: Suspension
    let engineFeatures: EngineFeatures
    let specifications: Specifications
    let brakeSystem: BrakeSystem
    let driveType: DriveType
    let miscInteriorFeatures: MiscInteriorFeatures
    let collisionSafetySystem: CollisionSafetySystem
    let generationInfo: GenerationInfo
    let driverSeat: DriverSeat
    let security: Security
    let tmvuFeature: TmvuFeature
    let airbags: Airbags
    let the2NdRowSeats: The2NdRowSeats

    enum CodingKeys: String, CodingKey {
        case cargoDimensions = "CARGO_DIMENSIONS"
        case mobileConnectivity = "MOBILE_CONNECTIVITY"
        case transmissionFeatures = "TRANSMISSION_FEATURES"
        case instrumentation = "INSTRUMENTATION"
        case miscExteriorFeatures = "MISC._EXTERIOR_FEATURES"
        case doors = "DOORS"
        case exteriorLights = "EXTERIOR_LIGHTS"
        case partnerMapping = "PARTNER_MAPPING"
        case tractionStabilityControl = "TRACTION/STABILITY_CONTROL"
        case frontPassengerSeat = "FRONT_PASSENGER_SEAT"
        case mirrors = "MIRRORS"
        case steering = "STEERING"
        case the1StRowSeats = "1ST_ROW_SEATS"
        case interiorDimensions = "INTERIOR_DIMENSIONS"
        case spareTireWheel = "SPARE_TIRE/WHEEL"
        case crashTestRatings = "CRASH_TEST_RATINGS"
        case powerOutlets = "POWER_OUTLETS"
        case nciOptionalFacet = "NCI_OPTIONAL_FACET"
        case exteriorDimensions = "EXTERIOR_DIMENSIONS"
        case windows = "WINDOWS"
        case steeringWheel = "STEERING_WHEEL"
        case main = "MAIN"
        case childSafety = "CHILD_SAFETY"
        case nciStandardFacet = "NCI_STANDARD_FACET"
        case styleInfo = "STYLE_INFO"
        case storage = "STORAGE"
        case pricing = "PRICING"
        case parkingAid = "PARKING_AID"
        case seatingConfiguration = "SEATING_CONFIGURATION"
        case airConditioning = "AIR_CONDITIONING"
        case differential = "DIFFERENTIAL"
        case consumerGenericFeature = "CONSUMER_GENERIC_FEATURE"
        case seatbelts = "SEATBELTS"
        case suspension = "SUSPENSION"
        case engineFeatures = "ENGINE_FEATURES"
        case specifications = "SPECIFICATIONS"
        case brakeSystem = "BRAKE_SYSTEM"
        case driveType = "DRIVE_TYPE"
        case miscInteriorFeatures = "MISC._INTERIOR_FEATURES"
        case collisionSafetySystem = "COLLISION_SAFETY_SYSTEM"
        case generationInfo = "GENERATION_INFO"
        case driverSeat = "DRIVER_SEAT"
        case security = "SECURITY"
        case tmvuFeature = "TMVU_FEATURE"
        case airbags = "AIRBAGS"
        case the2NdRowSeats = "2ND_ROW_SEATS"
    }
}

// MARK: - AirConditioning
struct AirConditioning: Codable {
    let id: Int
    let name: String
    let properties: AIRCONDITIONINGProperties
    let attributes: AIRCONDITIONINGAttributes
}

// MARK: - AIRCONDITIONINGAttributes
struct AIRCONDITIONINGAttributes: Codable {
    let rearHeat, frontAirConditioning, frontAirConditioningZones, airFiltration: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case rearHeat = "REAR_HEAT"
        case frontAirConditioning = "FRONT_AIR_CONDITIONING"
        case frontAirConditioningZones = "FRONT_AIR_CONDITIONING_ZONES"
        case airFiltration = "AIR_FILTRATION"
    }
}

// MARK: - The1_StRowSeatType
struct The1_StRowSeatType: Codable {
    let id: Double
    let name, value: String
}

// MARK: - AIRCONDITIONINGProperties
struct AIRCONDITIONINGProperties: Codable {
    let rearHeat, frontAirConditioning, frontAirConditioningZones, airFiltration: String

    enum CodingKeys: String, CodingKey {
        case rearHeat = "REAR_HEAT"
        case frontAirConditioning = "FRONT_AIR_CONDITIONING"
        case frontAirConditioningZones = "FRONT_AIR_CONDITIONING_ZONES"
        case airFiltration = "AIR_FILTRATION"
    }
}

// MARK: - Airbags
struct Airbags: Codable {
    let id: Int
    let name: String
    let properties: AIRBAGSProperties
    let attributes: AIRBAGSAttributes
}

// MARK: - AIRBAGSAttributes
struct AIRBAGSAttributes: Codable {
    let headAirbags, sideAirbags: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case headAirbags = "HEAD_AIRBAGS"
        case sideAirbags = "SIDE_AIRBAGS"
    }
}

// MARK: - AIRBAGSProperties
struct AIRBAGSProperties: Codable {
    let headAirbags, sideAirbags: String

    enum CodingKeys: String, CodingKey {
        case headAirbags = "HEAD_AIRBAGS"
        case sideAirbags = "SIDE_AIRBAGS"
    }
}

// MARK: - BrakeSystem
struct BrakeSystem: Codable {
    let id: Int
    let name: String
    let properties: BRAKESYSTEMProperties
    let attributes: BRAKESYSTEMAttributes
}

// MARK: - BRAKESYSTEMAttributes
struct BRAKESYSTEMAttributes: Codable {
    let brakingAssist, brakeDrying, antilockBrakingSystem, rearBrakeType: The1_StRowSeatType
    let emergencyBrakingPreparation, frontBrakeType: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case brakingAssist = "BRAKING_ASSIST"
        case brakeDrying = "BRAKE_DRYING"
        case antilockBrakingSystem = "ANTILOCK_BRAKING_SYSTEM"
        case rearBrakeType = "REAR_BRAKE_TYPE"
        case emergencyBrakingPreparation = "EMERGENCY_BRAKING_PREPARATION"
        case frontBrakeType = "FRONT_BRAKE_TYPE"
    }
}

// MARK: - BRAKESYSTEMProperties
struct BRAKESYSTEMProperties: Codable {
    let brakingAssist, brakeDrying, antilockBrakingSystem, rearBrakeType: String
    let emergencyBrakingPreparation, frontBrakeType: String

    enum CodingKeys: String, CodingKey {
        case brakingAssist = "BRAKING_ASSIST"
        case brakeDrying = "BRAKE_DRYING"
        case antilockBrakingSystem = "ANTILOCK_BRAKING_SYSTEM"
        case rearBrakeType = "REAR_BRAKE_TYPE"
        case emergencyBrakingPreparation = "EMERGENCY_BRAKING_PREPARATION"
        case frontBrakeType = "FRONT_BRAKE_TYPE"
    }
}

// MARK: - CargoDimensions
struct CargoDimensions: Codable {
    let id: Int
    let name: String
    let properties: CARGODIMENSIONSProperties
    let attributes: CARGODIMENSIONSAttributes
}

// MARK: - CARGODIMENSIONSAttributes
struct CARGODIMENSIONSAttributes: Codable {
    let cargoCapacityAllSeatsInPlace: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case cargoCapacityAllSeatsInPlace = "CARGO_CAPACITY,_ALL_SEATS_IN_PLACE"
    }
}

// MARK: - CARGODIMENSIONSProperties
struct CARGODIMENSIONSProperties: Codable {
    let cargoCapacityAllSeatsInPlace: String

    enum CodingKeys: String, CodingKey {
        case cargoCapacityAllSeatsInPlace = "CARGO_CAPACITY,_ALL_SEATS_IN_PLACE"
    }
}

// MARK: - ChildSafety
struct ChildSafety: Codable {
    let id: Int
    let name: String
    let properties: CHILDSAFETYProperties
    let attributes: CHILDSAFETYAttributes
}

// MARK: - CHILDSAFETYAttributes
struct CHILDSAFETYAttributes: Codable {
    let childSeatAnchors: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case childSeatAnchors = "CHILD_SEAT_ANCHORS"
    }
}

// MARK: - CHILDSAFETYProperties
struct CHILDSAFETYProperties: Codable {
    let childSeatAnchors: String

    enum CodingKeys: String, CodingKey {
        case childSeatAnchors = "CHILD_SEAT_ANCHORS"
    }
}

// MARK: - CollisionSafetySystem
struct CollisionSafetySystem: Codable {
    let id: Int
    let name: String
    let properties: COLLISIONSAFETYSYSTEMProperties
    let attributes: COLLISIONSAFETYSYSTEMAttributes
}

// MARK: - COLLISIONSAFETYSYSTEMAttributes
struct COLLISIONSAFETYSYSTEMAttributes: Codable {
    let postCollisionSafetySystem: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case postCollisionSafetySystem = "POST_COLLISION_SAFETY_SYSTEM"
    }
}

// MARK: - COLLISIONSAFETYSYSTEMProperties
struct COLLISIONSAFETYSYSTEMProperties: Codable {
    let postCollisionSafetySystem: String

    enum CodingKeys: String, CodingKey {
        case postCollisionSafetySystem = "POST_COLLISION_SAFETY_SYSTEM"
    }
}

// MARK: - ConsumerGenericFeature
struct ConsumerGenericFeature: Codable {
    let id: Int
    let name: String
    let properties: CONSUMERGENERICFEATUREProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - CONSUMERGENERICFEATUREProperties
struct CONSUMERGENERICFEATUREProperties: Codable {
    let consumerGenericFeature19, consumerGenericFeature18, consumerGenericFeature17, consumerGenericFeature1: String
    let consumerGenericFeature0, consumerGenericFeature9, consumerGenericFeature12, consumerGenericFeature8: String
    let consumerGenericFeature11, consumerGenericFeature7, consumerGenericFeature10, consumerGenericFeature6: String
    let consumerGenericFeature20, consumerGenericFeature5, consumerGenericFeature16, consumerGenericFeature4: String
    let consumerGenericFeature15, consumerGenericFeature3, consumerGenericFeature14, consumerGenericFeature2: String
    let consumerGenericFeature13: String

    enum CodingKeys: String, CodingKey {
        case consumerGenericFeature19 = "CONSUMER_GENERIC_FEATURE_19"
        case consumerGenericFeature18 = "CONSUMER_GENERIC_FEATURE_18"
        case consumerGenericFeature17 = "CONSUMER_GENERIC_FEATURE_17"
        case consumerGenericFeature1 = "CONSUMER_GENERIC_FEATURE_1"
        case consumerGenericFeature0 = "CONSUMER_GENERIC_FEATURE_0"
        case consumerGenericFeature9 = "CONSUMER_GENERIC_FEATURE_9"
        case consumerGenericFeature12 = "CONSUMER_GENERIC_FEATURE_12"
        case consumerGenericFeature8 = "CONSUMER_GENERIC_FEATURE_8"
        case consumerGenericFeature11 = "CONSUMER_GENERIC_FEATURE_11"
        case consumerGenericFeature7 = "CONSUMER_GENERIC_FEATURE_7"
        case consumerGenericFeature10 = "CONSUMER_GENERIC_FEATURE_10"
        case consumerGenericFeature6 = "CONSUMER_GENERIC_FEATURE_6"
        case consumerGenericFeature20 = "CONSUMER_GENERIC_FEATURE_20"
        case consumerGenericFeature5 = "CONSUMER_GENERIC_FEATURE_5"
        case consumerGenericFeature16 = "CONSUMER_GENERIC_FEATURE_16"
        case consumerGenericFeature4 = "CONSUMER_GENERIC_FEATURE_4"
        case consumerGenericFeature15 = "CONSUMER_GENERIC_FEATURE_15"
        case consumerGenericFeature3 = "CONSUMER_GENERIC_FEATURE_3"
        case consumerGenericFeature14 = "CONSUMER_GENERIC_FEATURE_14"
        case consumerGenericFeature2 = "CONSUMER_GENERIC_FEATURE_2"
        case consumerGenericFeature13 = "CONSUMER_GENERIC_FEATURE_13"
    }
}

// MARK: - CrashTestRatings
struct CrashTestRatings: Codable {
    let id: Int
    let name: String
    let properties: CRASHTESTRATINGSProperties
    let attributes: CRASHTESTRATINGSAttributes
}

// MARK: - CRASHTESTRATINGSAttributes
struct CRASHTESTRATINGSAttributes: Codable {
    let iihsModerateOverlapFrontTestResults, iihsRoofStrengthTestResults, iihsSmallOverlapFrontDriverSide, iihsSideImpactTestResults: The1_StRowSeatType
    let iihsRearCrashProtectionHeadRestraintRatings: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case iihsModerateOverlapFrontTestResults = "IIHS_MODERATE_OVERLAP_FRONT_TEST_RESULTS"
        case iihsRoofStrengthTestResults = "IIHS_ROOF_STRENGTH_TEST_RESULTS"
        case iihsSmallOverlapFrontDriverSide = "IIHS_SMALL_OVERLAP_FRONT_DRIVER_SIDE"
        case iihsSideImpactTestResults = "IIHS_SIDE_IMPACT_TEST_RESULTS"
        case iihsRearCrashProtectionHeadRestraintRatings = "IIHS_REAR_CRASH_PROTECTION/HEAD_RESTRAINT_RATINGS"
    }
}

// MARK: - CRASHTESTRATINGSProperties
struct CRASHTESTRATINGSProperties: Codable {
    let iihsModerateOverlapFrontTestResults, iihsRoofStrengthTestResults, iihsSmallOverlapFrontDriverSide, iihsSideImpactTestResults: String
    let iihsRearCrashProtectionHeadRestraintRatings: String

    enum CodingKeys: String, CodingKey {
        case iihsModerateOverlapFrontTestResults = "IIHS_MODERATE_OVERLAP_FRONT_TEST_RESULTS"
        case iihsRoofStrengthTestResults = "IIHS_ROOF_STRENGTH_TEST_RESULTS"
        case iihsSmallOverlapFrontDriverSide = "IIHS_SMALL_OVERLAP_FRONT_DRIVER_SIDE"
        case iihsSideImpactTestResults = "IIHS_SIDE_IMPACT_TEST_RESULTS"
        case iihsRearCrashProtectionHeadRestraintRatings = "IIHS_REAR_CRASH_PROTECTION/HEAD_RESTRAINT_RATINGS"
    }
}

// MARK: - Differential
struct Differential: Codable {
    let id: Int
    let name: String
    let properties: DIFFERENTIALProperties
    let attributes: DIFFERENTIALAttributes
}

// MARK: - DIFFERENTIALAttributes
struct DIFFERENTIALAttributes: Codable {
    let limitedSlipRearDifferential, finalDriveRatio: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case limitedSlipRearDifferential = "LIMITED_SLIP_REAR_DIFFERENTIAL"
        case finalDriveRatio = "FINAL_DRIVE_RATIO"
    }
}

// MARK: - DIFFERENTIALProperties
struct DIFFERENTIALProperties: Codable {
    let limitedSlipRearDifferential, finalDriveRatio: String

    enum CodingKeys: String, CodingKey {
        case limitedSlipRearDifferential = "LIMITED_SLIP_REAR_DIFFERENTIAL"
        case finalDriveRatio = "FINAL_DRIVE_RATIO"
    }
}

// MARK: - Doors
struct Doors: Codable {
    let id: Int
    let name: String
    let properties: DOORSProperties
    let attributes: DOORSAttributes
}

// MARK: - DOORSAttributes
struct DOORSAttributes: Codable {
    let numberOfDoors: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case numberOfDoors = "NUMBER_OF_DOORS"
    }
}

// MARK: - DOORSProperties
struct DOORSProperties: Codable {
    let numberOfDoors: String

    enum CodingKeys: String, CodingKey {
        case numberOfDoors = "NUMBER_OF_DOORS"
    }
}

// MARK: - DriveType
struct DriveType: Codable {
    let id: Int
    let name: String
    let properties: DRIVETYPEProperties
    let attributes: DRIVETYPEAttributes
}

// MARK: - DRIVETYPEAttributes
struct DRIVETYPEAttributes: Codable {
    let drivenWheels: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case drivenWheels = "DRIVEN_WHEELS"
    }
}

// MARK: - DRIVETYPEProperties
struct DRIVETYPEProperties: Codable {
    let drivenWheels: String

    enum CodingKeys: String, CodingKey {
        case drivenWheels = "DRIVEN_WHEELS"
    }
}

// MARK: - DriverSeat
struct DriverSeat: Codable {
    let id: Int
    let name: String
    let properties: DRIVERSEATProperties
    let attributes: DRIVERSEATAttributes
}

// MARK: - DRIVERSEATAttributes
struct DRIVERSEATAttributes: Codable {
    let numberOfDriverSeatPowerAdjustments, heightAdjustableDriverSeat, heatedDriverSeat, ventilatedDriverSeat: The1_StRowSeatType
    let driverSeatAdjustableLumbar: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case numberOfDriverSeatPowerAdjustments = "NUMBER_OF_DRIVER_SEAT_POWER_ADJUSTMENTS"
        case heightAdjustableDriverSeat = "HEIGHT_ADJUSTABLE_DRIVER_SEAT"
        case heatedDriverSeat = "HEATED_DRIVER_SEAT"
        case ventilatedDriverSeat = "VENTILATED_DRIVER_SEAT"
        case driverSeatAdjustableLumbar = "DRIVER_SEAT_ADJUSTABLE_LUMBAR"
    }
}

// MARK: - DRIVERSEATProperties
struct DRIVERSEATProperties: Codable {
    let numberOfDriverSeatPowerAdjustments, heightAdjustableDriverSeat, heatedDriverSeat, ventilatedDriverSeat: String
    let driverSeatAdjustableLumbar: String

    enum CodingKeys: String, CodingKey {
        case numberOfDriverSeatPowerAdjustments = "NUMBER_OF_DRIVER_SEAT_POWER_ADJUSTMENTS"
        case heightAdjustableDriverSeat = "HEIGHT_ADJUSTABLE_DRIVER_SEAT"
        case heatedDriverSeat = "HEATED_DRIVER_SEAT"
        case ventilatedDriverSeat = "VENTILATED_DRIVER_SEAT"
        case driverSeatAdjustableLumbar = "DRIVER_SEAT_ADJUSTABLE_LUMBAR"
    }
}

// MARK: - EngineFeatures
struct EngineFeatures: Codable {
    let id: Int
    let name: String
    let properties: ENGINEFEATURESProperties
    let attributes: ENGINEFEATURESAttributes
}

// MARK: - ENGINEFEATURESAttributes
struct ENGINEFEATURESAttributes: Codable {
    let keylessIgnition, engineOilCooler: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case keylessIgnition = "KEYLESS_IGNITION"
        case engineOilCooler = "ENGINE_OIL_COOLER"
    }
}

// MARK: - ENGINEFEATURESProperties
struct ENGINEFEATURESProperties: Codable {
    let keylessIgnition, engineOilCooler: String

    enum CodingKeys: String, CodingKey {
        case keylessIgnition = "KEYLESS_IGNITION"
        case engineOilCooler = "ENGINE_OIL_COOLER"
    }
}

// MARK: - ExteriorDimensions
struct ExteriorDimensions: Codable {
    let id: Int
    let name: String
    let properties: EXTERIORDIMENSIONSProperties
    let attributes: EXTERIORDIMENSIONSAttributes
}

// MARK: - EXTERIORDIMENSIONSAttributes
struct EXTERIORDIMENSIONSAttributes: Codable {
    let overallLength, minimumGroundClearance, overallHeight, wheelbase: The1_StRowSeatType
    let overallWidthWithMirrors, overallWidthWithoutMirrors: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case overallLength = "OVERALL_LENGTH"
        case minimumGroundClearance = "MINIMUM_GROUND_CLEARANCE"
        case overallHeight = "OVERALL_HEIGHT"
        case wheelbase = "WHEELBASE"
        case overallWidthWithMirrors = "OVERALL_WIDTH_WITH_MIRRORS"
        case overallWidthWithoutMirrors = "OVERALL_WIDTH_WITHOUT_MIRRORS"
    }
}

// MARK: - EXTERIORDIMENSIONSProperties
struct EXTERIORDIMENSIONSProperties: Codable {
    let overallLength, minimumGroundClearance, overallHeight, wheelbase: String
    let overallWidthWithMirrors, overallWidthWithoutMirrors: String

    enum CodingKeys: String, CodingKey {
        case overallLength = "OVERALL_LENGTH"
        case minimumGroundClearance = "MINIMUM_GROUND_CLEARANCE"
        case overallHeight = "OVERALL_HEIGHT"
        case wheelbase = "WHEELBASE"
        case overallWidthWithMirrors = "OVERALL_WIDTH_WITH_MIRRORS"
        case overallWidthWithoutMirrors = "OVERALL_WIDTH_WITHOUT_MIRRORS"
    }
}

// MARK: - ExteriorLights
struct ExteriorLights: Codable {
    let id: Int
    let name: String
    let properties: EXTERIORLIGHTSProperties
    let attributes: EXTERIORLIGHTSAttributes
}

// MARK: - EXTERIORLIGHTSAttributes
struct EXTERIORLIGHTSAttributes: Codable {
    let headlightsAutoDelay, exteriorEntryLights, daytimeRunningLights, frontFogLights: The1_StRowSeatType
    let headlightsDuskSensor: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case headlightsAutoDelay = "HEADLIGHTS_AUTO_DELAY"
        case exteriorEntryLights = "EXTERIOR_ENTRY_LIGHTS"
        case daytimeRunningLights = "DAYTIME_RUNNING_LIGHTS"
        case frontFogLights = "FRONT_FOG_LIGHTS"
        case headlightsDuskSensor = "HEADLIGHTS_DUSK_SENSOR"
    }
}

// MARK: - EXTERIORLIGHTSProperties
struct EXTERIORLIGHTSProperties: Codable {
    let headlightsAutoDelay, exteriorEntryLights, daytimeRunningLights, frontFogLights: String
    let headlightsDuskSensor: String

    enum CodingKeys: String, CodingKey {
        case headlightsAutoDelay = "HEADLIGHTS_AUTO_DELAY"
        case exteriorEntryLights = "EXTERIOR_ENTRY_LIGHTS"
        case daytimeRunningLights = "DAYTIME_RUNNING_LIGHTS"
        case frontFogLights = "FRONT_FOG_LIGHTS"
        case headlightsDuskSensor = "HEADLIGHTS_DUSK_SENSOR"
    }
}

// MARK: - FrontPassengerSeat
struct FrontPassengerSeat: Codable {
    let id: Int
    let name: String
    let properties: FRONTPASSENGERSEATProperties
    let attributes: FRONTPASSENGERSEATAttributes
}

// MARK: - FRONTPASSENGERSEATAttributes
struct FRONTPASSENGERSEATAttributes: Codable {
    let passengerSeatAdjustableLumbar, ventilatedPassengerSeat, numberOfPassengerSeatManualAdjustments, heatedPassengerSeat: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case passengerSeatAdjustableLumbar = "PASSENGER_SEAT_ADJUSTABLE_LUMBAR"
        case ventilatedPassengerSeat = "VENTILATED_PASSENGER_SEAT"
        case numberOfPassengerSeatManualAdjustments = "NUMBER_OF_PASSENGER_SEAT_MANUAL_ADJUSTMENTS"
        case heatedPassengerSeat = "HEATED_PASSENGER_SEAT"
    }
}

// MARK: - FRONTPASSENGERSEATProperties
struct FRONTPASSENGERSEATProperties: Codable {
    let passengerSeatAdjustableLumbar, ventilatedPassengerSeat, numberOfPassengerSeatManualAdjustments, heatedPassengerSeat: String

    enum CodingKeys: String, CodingKey {
        case passengerSeatAdjustableLumbar = "PASSENGER_SEAT_ADJUSTABLE_LUMBAR"
        case ventilatedPassengerSeat = "VENTILATED_PASSENGER_SEAT"
        case numberOfPassengerSeatManualAdjustments = "NUMBER_OF_PASSENGER_SEAT_MANUAL_ADJUSTMENTS"
        case heatedPassengerSeat = "HEATED_PASSENGER_SEAT"
    }
}

// MARK: - GenerationInfo
struct GenerationInfo: Codable {
    let id: Int
    let name: String
    let properties: GENERATIONINFOProperties
    let attributes: GENERATIONINFOAttributes
}

// MARK: - GENERATIONINFOAttributes
struct GENERATIONINFOAttributes: Codable {
    let modelFamilyID, generation, changeDescription, modelFamilyName: The1_StRowSeatType
    let generationYear: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case modelFamilyID = "MODEL_FAMILY_ID"
        case generation = "GENERATION"
        case changeDescription = "CHANGE_DESCRIPTION"
        case modelFamilyName = "MODEL_FAMILY_NAME"
        case generationYear = "GENERATION_YEAR"
    }
}

// MARK: - GENERATIONINFOProperties
struct GENERATIONINFOProperties: Codable {
    let modelFamilyID, generation, changeDescription, modelFamilyName: String
    let generationYear: String

    enum CodingKeys: String, CodingKey {
        case modelFamilyID = "MODEL_FAMILY_ID"
        case generation = "GENERATION"
        case changeDescription = "CHANGE_DESCRIPTION"
        case modelFamilyName = "MODEL_FAMILY_NAME"
        case generationYear = "GENERATION_YEAR"
    }
}

// MARK: - Instrumentation
struct Instrumentation: Codable {
    let id: Int
    let name: String
    let properties: INSTRUMENTATIONProperties
    let attributes: INSTRUMENTATIONAttributes
}

// MARK: - INSTRUMENTATIONAttributes
struct INSTRUMENTATIONAttributes: Codable {
    let compass, tirePressureMonitoringSystem, tripComputer, tachometer: The1_StRowSeatType
    let clock, externalTemperatureGauge: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case compass = "COMPASS"
        case tirePressureMonitoringSystem = "TIRE_PRESSURE_MONITORING_SYSTEM"
        case tripComputer = "TRIP_COMPUTER"
        case tachometer = "TACHOMETER"
        case clock = "CLOCK"
        case externalTemperatureGauge = "EXTERNAL_TEMPERATURE_GAUGE"
    }
}

// MARK: - INSTRUMENTATIONProperties
struct INSTRUMENTATIONProperties: Codable {
    let compass, tirePressureMonitoringSystem, tripComputer, tachometer: String
    let clock, externalTemperatureGauge: String

    enum CodingKeys: String, CodingKey {
        case compass = "COMPASS"
        case tirePressureMonitoringSystem = "TIRE_PRESSURE_MONITORING_SYSTEM"
        case tripComputer = "TRIP_COMPUTER"
        case tachometer = "TACHOMETER"
        case clock = "CLOCK"
        case externalTemperatureGauge = "EXTERNAL_TEMPERATURE_GAUGE"
    }
}

// MARK: - InteriorDimensions
struct InteriorDimensions: Codable {
    let id: Int
    let name: String
    let properties: INTERIORDIMENSIONSProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - INTERIORDIMENSIONSProperties
struct INTERIORDIMENSIONSProperties: Codable {
    let the2NdRowHipRoom, the1StRowShoulderRoom, the1StRowHipRoom, the2NdRowHeadRoom: String
    let the1StRowLegRoom, the1StRowHeadRoom, epaInteriorVolume, the2NdRowShoulderRoom: String
    let the2NdRowLegRoom: String

    enum CodingKeys: String, CodingKey {
        case the2NdRowHipRoom = "2ND_ROW_HIP_ROOM"
        case the1StRowShoulderRoom = "1ST_ROW_SHOULDER_ROOM"
        case the1StRowHipRoom = "1ST_ROW_HIP_ROOM"
        case the2NdRowHeadRoom = "2ND_ROW_HEAD_ROOM"
        case the1StRowLegRoom = "1ST_ROW_LEG_ROOM"
        case the1StRowHeadRoom = "1ST_ROW_HEAD_ROOM"
        case epaInteriorVolume = "EPA_INTERIOR_VOLUME"
        case the2NdRowShoulderRoom = "2ND_ROW_SHOULDER_ROOM"
        case the2NdRowLegRoom = "2ND_ROW_LEG_ROOM"
    }
}

// MARK: - Main
struct Main: Codable {
    let id: Int
    let name: String
    let properties: MAINProperties
    let attributes: MAINAttributes
}

// MARK: - MAINAttributes
struct MAINAttributes: Codable {
    let useInNew, workflowstatus, useInPreProduction, useInUsed: The1_StRowSeatType
    let useInPricePromise, name: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case useInNew = "USE_IN_NEW"
        case workflowstatus = "WORKFLOWSTATUS"
        case useInPreProduction = "USE_IN_PRE_PRODUCTION"
        case useInUsed = "USE_IN_USED"
        case useInPricePromise = "USE_IN_PRICE_PROMISE"
        case name = "NAME"
    }
}

// MARK: - MAINProperties
struct MAINProperties: Codable {
    let useInNew, workflowstatus, useInPreProduction, useInUsed: String
    let useInPricePromise, name: String

    enum CodingKeys: String, CodingKey {
        case useInNew = "USE_IN_NEW"
        case workflowstatus = "WORKFLOWSTATUS"
        case useInPreProduction = "USE_IN_PRE_PRODUCTION"
        case useInUsed = "USE_IN_USED"
        case useInPricePromise = "USE_IN_PRICE_PROMISE"
        case name = "NAME"
    }
}

// MARK: - Mirrors
struct Mirrors: Codable {
    let id: Int
    let name: String
    let properties: MIRRORSProperties
    let attributes: MIRRORSAttributes
}

// MARK: - MIRRORSAttributes
struct MIRRORSAttributes: Codable {
    let heatedExteriorMirrors, the1StRowVanityMirrors, autoDimmingRearviewMirror, exteriorMirrorAdjustment: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case heatedExteriorMirrors = "HEATED_EXTERIOR_MIRRORS"
        case the1StRowVanityMirrors = "1ST_ROW_VANITY_MIRRORS"
        case autoDimmingRearviewMirror = "AUTO_DIMMING_REARVIEW_MIRROR"
        case exteriorMirrorAdjustment = "EXTERIOR_MIRROR_ADJUSTMENT"
    }
}

// MARK: - MIRRORSProperties
struct MIRRORSProperties: Codable {
    let heatedExteriorMirrors, the1StRowVanityMirrors, autoDimmingRearviewMirror, exteriorMirrorAdjustment: String

    enum CodingKeys: String, CodingKey {
        case heatedExteriorMirrors = "HEATED_EXTERIOR_MIRRORS"
        case the1StRowVanityMirrors = "1ST_ROW_VANITY_MIRRORS"
        case autoDimmingRearviewMirror = "AUTO_DIMMING_REARVIEW_MIRROR"
        case exteriorMirrorAdjustment = "EXTERIOR_MIRROR_ADJUSTMENT"
    }
}

// MARK: - MiscExteriorFeatures
struct MiscExteriorFeatures: Codable {
    let id: Int
    let name: String
    let properties: MISCEXTERIORFEATURESProperties
    let attributes: MISCEXTERIORFEATURESAttributes
}

// MARK: - MISCEXTERIORFEATURESAttributes
struct MISCEXTERIORFEATURESAttributes: Codable {
    let rearSpoiler, exteriorCamera: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case rearSpoiler = "REAR_SPOILER"
        case exteriorCamera = "EXTERIOR_CAMERA"
    }
}

// MARK: - MISCEXTERIORFEATURESProperties
struct MISCEXTERIORFEATURESProperties: Codable {
    let rearSpoiler, exteriorCamera: String

    enum CodingKeys: String, CodingKey {
        case rearSpoiler = "REAR_SPOILER"
        case exteriorCamera = "EXTERIOR_CAMERA"
    }
}

// MARK: - MiscInteriorFeatures
struct MiscInteriorFeatures: Codable {
    let id: Int
    let name: String
    let properties: MISCINTERIORFEATURESProperties
    let attributes: MISCINTERIORFEATURESAttributes
}

// MARK: - MISCINTERIORFEATURESAttributes
struct MISCINTERIORFEATURESAttributes: Codable {
    let floorMatMaterial, cruiseControl, floorMats, universalRemoteTransmitter: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case floorMatMaterial = "FLOOR_MAT_MATERIAL"
        case cruiseControl = "CRUISE_CONTROL"
        case floorMats = "FLOOR_MATS"
        case universalRemoteTransmitter = "UNIVERSAL_REMOTE_TRANSMITTER"
    }
}

// MARK: - MISCINTERIORFEATURESProperties
struct MISCINTERIORFEATURESProperties: Codable {
    let floorMatMaterial, cruiseControl, floorMats, universalRemoteTransmitter: String

    enum CodingKeys: String, CodingKey {
        case floorMatMaterial = "FLOOR_MAT_MATERIAL"
        case cruiseControl = "CRUISE_CONTROL"
        case floorMats = "FLOOR_MATS"
        case universalRemoteTransmitter = "UNIVERSAL_REMOTE_TRANSMITTER"
    }
}

// MARK: - MobileConnectivity
struct MobileConnectivity: Codable {
    let id: Int
    let name: String
    let properties: MOBILECONNECTIVITYProperties
    let attributes: MOBILECONNECTIVITYAttributes
}

// MARK: - MOBILECONNECTIVITYAttributes
struct MOBILECONNECTIVITYAttributes: Codable {
    let mobileRouter, bluetooth, satelliteCommunications, monthsOfFreeSatelliteCommunicationsService: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case mobileRouter = "MOBILE_ROUTER"
        case bluetooth = "BLUETOOTH"
        case satelliteCommunications = "SATELLITE_COMMUNICATIONS"
        case monthsOfFreeSatelliteCommunicationsService = "MONTHS_OF_FREE_SATELLITE_COMMUNICATIONS_SERVICE"
    }
}

// MARK: - MOBILECONNECTIVITYProperties
struct MOBILECONNECTIVITYProperties: Codable {
    let mobileRouter, bluetooth, satelliteCommunications, monthsOfFreeSatelliteCommunicationsService: String

    enum CodingKeys: String, CodingKey {
        case mobileRouter = "MOBILE_ROUTER"
        case bluetooth = "BLUETOOTH"
        case satelliteCommunications = "SATELLITE_COMMUNICATIONS"
        case monthsOfFreeSatelliteCommunicationsService = "MONTHS_OF_FREE_SATELLITE_COMMUNICATIONS_SERVICE"
    }
}

// MARK: - NciOptionalFacet
struct NciOptionalFacet: Codable {
    let id: Int
    let name: String
    let properties: NCIOPTIONALFACETProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - NCIOPTIONALFACETProperties
struct NCIOPTIONALFACETProperties: Codable {
    let sunroofPowerGlass, usbConnection, seatMaterialLeather, realTimeTraffic: String
    let rearParkingSensors, the1StRowSeatsBucket, videoMonitorFront, remoteEngineStart: String
    let oneTouchPowerSunroof, seatMaterialPremiumLeather, satelliteRadio, seatMaterialLeatherSuede: String
    let the1StRowSeatsSport, the1_Subwoofers, driverSSeatMultiLevelHeating, auxiliaryAudioInputAndUSBWithExternalMediaControl: String
    let passengerSeatMultiLevelHeating, adaptiveCruiseControl, dvdPlayer: String

    enum CodingKeys: String, CodingKey {
        case sunroofPowerGlass = "SUNROOF:_POWER_GLASS"
        case usbConnection = "USB_CONNECTION"
        case seatMaterialLeather = "SEAT_MATERIAL:_LEATHER"
        case realTimeTraffic = "REAL_TIME_TRAFFIC"
        case rearParkingSensors = "REAR_PARKING_SENSORS"
        case the1StRowSeatsBucket = "1ST_ROW_SEATS:_BUCKET"
        case videoMonitorFront = "VIDEO_MONITOR:_FRONT"
        case remoteEngineStart = "REMOTE_ENGINE_START"
        case oneTouchPowerSunroof = "ONE_TOUCH_POWER_SUNROOF"
        case seatMaterialPremiumLeather = "SEAT_MATERIAL:_PREMIUM_LEATHER"
        case satelliteRadio = "SATELLITE_RADIO"
        case seatMaterialLeatherSuede = "SEAT_MATERIAL:_LEATHER/SUEDE"
        case the1StRowSeatsSport = "1ST_ROW_SEATS:_SPORT"
        case the1_Subwoofers = "1_SUBWOOFERS"
        case driverSSeatMultiLevelHeating = "DRIVER'S_SEAT:_MULTI_LEVEL_HEATING"
        case auxiliaryAudioInputAndUSBWithExternalMediaControl = "AUXILIARY_AUDIO_INPUT_AND_USB_WITH_EXTERNAL_MEDIA_CONTROL"
        case passengerSeatMultiLevelHeating = "PASSENGER_SEAT:_MULTI_LEVEL_HEATING"
        case adaptiveCruiseControl = "ADAPTIVE_CRUISE_CONTROL"
        case dvdPlayer = "DVD_PLAYER"
    }
}

// MARK: - NciStandardFacet
struct NciStandardFacet: Codable {
    let id: Int
    let name: String
    let properties: NCISTANDARDFACETProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - NCISTANDARDFACETProperties
struct NCISTANDARDFACETProperties: Codable {
    let usbConnection, seatMaterialLeather, rearParkingSensors, the1StRowSeatsBucket: String
    let tractionControl, childSeatAnchors, keylessIgnition, tirePressureMonitoring: String
    let automaticClimateControl, satelliteRadio, remoteAntiTheftAlarmSystem, cruiseControl: String
    let auxiliaryAudioInputAndUSBWithExternalMediaControl, driverSSeatMultiLevelHeating, passengerSeatMultiLevelHeating, sideAirbagsDualFront: String
    let stabilityControl: String

    enum CodingKeys: String, CodingKey {
        case usbConnection = "USB_CONNECTION"
        case seatMaterialLeather = "SEAT_MATERIAL:_LEATHER"
        case rearParkingSensors = "REAR_PARKING_SENSORS"
        case the1StRowSeatsBucket = "1ST_ROW_SEATS:_BUCKET"
        case tractionControl = "TRACTION_CONTROL"
        case childSeatAnchors = "CHILD_SEAT_ANCHORS"
        case keylessIgnition = "KEYLESS_IGNITION"
        case tirePressureMonitoring = "TIRE_PRESSURE_MONITORING"
        case automaticClimateControl = "AUTOMATIC_CLIMATE_CONTROL"
        case satelliteRadio = "SATELLITE_RADIO"
        case remoteAntiTheftAlarmSystem = "REMOTE_ANTI_THEFT_ALARM_SYSTEM"
        case cruiseControl = "CRUISE_CONTROL"
        case auxiliaryAudioInputAndUSBWithExternalMediaControl = "AUXILIARY_AUDIO_INPUT_AND_USB_WITH_EXTERNAL_MEDIA_CONTROL"
        case driverSSeatMultiLevelHeating = "DRIVER'S_SEAT:_MULTI_LEVEL_HEATING"
        case passengerSeatMultiLevelHeating = "PASSENGER_SEAT:_MULTI_LEVEL_HEATING"
        case sideAirbagsDualFront = "SIDE_AIRBAGS:_DUAL_FRONT"
        case stabilityControl = "STABILITY_CONTROL"
    }
}

// MARK: - ParkingAid
struct ParkingAid: Codable {
    let id: Int
    let name: String
    let properties: PARKINGAIDProperties
    let attributes: PARKINGAIDAttributes
}

// MARK: - PARKINGAIDAttributes
struct PARKINGAIDAttributes: Codable {
    let parkingSensors: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case parkingSensors = "PARKING_SENSORS"
    }
}

// MARK: - PARKINGAIDProperties
struct PARKINGAIDProperties: Codable {
    let parkingSensors: String

    enum CodingKeys: String, CodingKey {
        case parkingSensors = "PARKING_SENSORS"
    }
}

// MARK: - PartnerMapping
struct PartnerMapping: Codable {
    let id: Int
    let name: String
    let properties: PARTNERMAPPINGProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - PARTNERMAPPINGProperties
struct PARTNERMAPPINGProperties: Codable {
    let overallQualityDesign, algYearCode, algMakeCode, algStyleCode: String
    let overallQualityMechanical, chromeID, bodyInteriorQualityDesign, bodyInteriorQualityMechanical: String
    let jatoUid, overallIqs, featuresAccessoriesQualityDesign, algModelCode: String
    let jatoModelYear, powertrainQualityMechanical, featuresAccessoriesQualityMechanical, powertrainQualityDesign: String

    enum CodingKeys: String, CodingKey {
        case overallQualityDesign = "OVERALL_QUALITY_DESIGN"
        case algYearCode = "ALG_YEAR_CODE"
        case algMakeCode = "ALG_MAKE_CODE"
        case algStyleCode = "ALG_STYLE_CODE"
        case overallQualityMechanical = "OVERALL_QUALITY_MECHANICAL"
        case chromeID = "CHROME_ID"
        case bodyInteriorQualityDesign = "BODY_INTERIOR_QUALITY_DESIGN"
        case bodyInteriorQualityMechanical = "BODY_INTERIOR_QUALITY_MECHANICAL"
        case jatoUid = "JATO_UID"
        case overallIqs = "OVERALL_IQS"
        case featuresAccessoriesQualityDesign = "FEATURES_ACCESSORIES_QUALITY_DESIGN"
        case algModelCode = "ALG_MODEL_CODE"
        case jatoModelYear = "JATO_MODEL_YEAR"
        case powertrainQualityMechanical = "POWERTRAIN_QUALITY_MECHANICAL"
        case featuresAccessoriesQualityMechanical = "FEATURES_ACCESSORIES_QUALITY_MECHANICAL"
        case powertrainQualityDesign = "POWERTRAIN_QUALITY_DESIGN"
    }
}

// MARK: - PowerOutlets
struct PowerOutlets: Codable {
    let id: Int
    let name: String
    let properties: POWEROUTLETSProperties
    let attributes: POWEROUTLETSAttributes
}

// MARK: - POWEROUTLETSAttributes
struct POWEROUTLETSAttributes: Codable {
    let powerOutletS: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case powerOutletS = "POWER_OUTLET(S)"
    }
}

// MARK: - POWEROUTLETSProperties
struct POWEROUTLETSProperties: Codable {
    let powerOutletS: String

    enum CodingKeys: String, CodingKey {
        case powerOutletS = "POWER_OUTLET(S)"
    }
}

// MARK: - Pricing
struct Pricing: Codable {
    let id: Int
    let name: String
    let properties: PRICINGProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - PRICINGProperties
struct PRICINGProperties: Codable {
    let msrp, baseMsrp, totalMsrp, usedTmvRetail: String
    let deliveryCharge, dealerInvoice, usedTmvPrivateParty, usedTmvTradeIn: String
    let baseInvoice: String

    enum CodingKeys: String, CodingKey {
        case msrp = "MSRP"
        case baseMsrp = "BASE_MSRP"
        case totalMsrp = "TOTAL_MSRP"
        case usedTmvRetail = "USED_TMV_RETAIL"
        case deliveryCharge = "DELIVERY_CHARGE"
        case dealerInvoice = "DEALER_INVOICE"
        case usedTmvPrivateParty = "USED_TMV_PRIVATE_PARTY"
        case usedTmvTradeIn = "USED_TMV_TRADE_IN"
        case baseInvoice = "BASE_INVOICE"
    }
}

// MARK: - Seatbelts
struct Seatbelts: Codable {
    let id: Int
    let name: String
    let properties: SEATBELTSProperties
    let attributes: SEATBELTSAttributes
}

// MARK: - SEATBELTSAttributes
struct SEATBELTSAttributes: Codable {
    let the2NdRowCenterSeatbelt: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case the2NdRowCenterSeatbelt = "2ND_ROW_CENTER_SEATBELT"
    }
}

// MARK: - SEATBELTSProperties
struct SEATBELTSProperties: Codable {
    let the2NdRowCenterSeatbelt: String

    enum CodingKeys: String, CodingKey {
        case the2NdRowCenterSeatbelt = "2ND_ROW_CENTER_SEATBELT"
    }
}

// MARK: - SeatingConfiguration
struct SeatingConfiguration: Codable {
    let id: Int
    let name: String
    let properties: SEATINGCONFIGURATIONProperties
    let attributes: SEATINGCONFIGURATIONAttributes
}

// MARK: - SEATINGCONFIGURATIONAttributes
struct SEATINGCONFIGURATIONAttributes: Codable {
    let the1StRowSeatingCapacity, the2NdRowSeatingCapacity: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case the1StRowSeatingCapacity = "1ST_ROW_SEATING_CAPACITY"
        case the2NdRowSeatingCapacity = "2ND_ROW_SEATING_CAPACITY"
    }
}

// MARK: - SEATINGCONFIGURATIONProperties
struct SEATINGCONFIGURATIONProperties: Codable {
    let the1StRowSeatingCapacity, the2NdRowSeatingCapacity: String

    enum CodingKeys: String, CodingKey {
        case the1StRowSeatingCapacity = "1ST_ROW_SEATING_CAPACITY"
        case the2NdRowSeatingCapacity = "2ND_ROW_SEATING_CAPACITY"
    }
}

// MARK: - Security
struct Security: Codable {
    let id: Int
    let name: String
    let properties: SECURITYProperties
    let attributes: SECURITYAttributes
}

// MARK: - SECURITYAttributes
struct SECURITYAttributes: Codable {
    let antiTheftAlarmSystem, engineImmobilizer, powerDoorLocks: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case antiTheftAlarmSystem = "ANTI_THEFT_ALARM_SYSTEM"
        case engineImmobilizer = "ENGINE_IMMOBILIZER"
        case powerDoorLocks = "POWER_DOOR_LOCKS"
    }
}

// MARK: - SECURITYProperties
struct SECURITYProperties: Codable {
    let antiTheftAlarmSystem, engineImmobilizer, powerDoorLocks: String

    enum CodingKeys: String, CodingKey {
        case antiTheftAlarmSystem = "ANTI_THEFT_ALARM_SYSTEM"
        case engineImmobilizer = "ENGINE_IMMOBILIZER"
        case powerDoorLocks = "POWER_DOOR_LOCKS"
    }
}

// MARK: - SpareTireWheel
struct SpareTireWheel: Codable {
    let id: Int
    let name: String
    let properties: SPARETIREWHEELProperties
    let attributes: SPARETIREWHEELAttributes
}

// MARK: - SPARETIREWHEELAttributes
struct SPARETIREWHEELAttributes: Codable {
    let spareTireMountLocation, spareTireSize: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case spareTireMountLocation = "SPARE_TIRE_MOUNT_LOCATION"
        case spareTireSize = "SPARE_TIRE_SIZE"
    }
}

// MARK: - SPARETIREWHEELProperties
struct SPARETIREWHEELProperties: Codable {
    let spareTireMountLocation, spareTireSize: String

    enum CodingKeys: String, CodingKey {
        case spareTireMountLocation = "SPARE_TIRE_MOUNT_LOCATION"
        case spareTireSize = "SPARE_TIRE_SIZE"
    }
}

// MARK: - Specifications
struct Specifications: Codable {
    let id: Int
    let name: String
    let properties: SPECIFICATIONSProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - SPECIFICATIONSProperties
struct SPECIFICATIONSProperties: Codable {
    let epaCombinedMpg, turningDiameter, fuelCapacity, egeCityMpg: String
    let egeHighwayMpg, grossVehicleWeight, egeCombinedMpg, tcoCurbWeight: String
    let epaCityMpg, epaHighwayMpg, towingCapacity: String

    enum CodingKeys: String, CodingKey {
        case epaCombinedMpg = "EPA_COMBINED_MPG"
        case turningDiameter = "TURNING_DIAMETER"
        case fuelCapacity = "FUEL_CAPACITY"
        case egeCityMpg = "EGE_CITY_MPG"
        case egeHighwayMpg = "EGE_HIGHWAY_MPG"
        case grossVehicleWeight = "GROSS_VEHICLE_WEIGHT"
        case egeCombinedMpg = "EGE_COMBINED_MPG"
        case tcoCurbWeight = "TCO_CURB_WEIGHT"
        case epaCityMpg = "EPA_CITY_MPG"
        case epaHighwayMpg = "EPA_HIGHWAY_MPG"
        case towingCapacity = "TOWING_CAPACITY"
    }
}

// MARK: - Steering
struct Steering: Codable {
    let id: Int
    let name: String
    let properties: STEERINGProperties
    let attributes: STEERINGAttributes
}

// MARK: - STEERINGAttributes
struct STEERINGAttributes: Codable {
    let powerSteering: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case powerSteering = "POWER_STEERING"
    }
}

// MARK: - STEERINGProperties
struct STEERINGProperties: Codable {
    let powerSteering: String

    enum CodingKeys: String, CodingKey {
        case powerSteering = "POWER_STEERING"
    }
}

// MARK: - SteeringWheel
struct SteeringWheel: Codable {
    let id: Int
    let name: String
    let properties: STEERINGWHEELProperties
    let attributes: STEERINGWHEELAttributes
}

// MARK: - STEERINGWHEELAttributes
struct STEERINGWHEELAttributes: Codable {
    let phoneControlsOnSteeringWheel, heatedSteeringWheel, steeringWheelAdjustments, steeringWheelTrim: The1_StRowSeatType
    let audioControlsOnSteeringWheel, cruiseControlsOnSteeringWheel: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case phoneControlsOnSteeringWheel = "PHONE_CONTROLS_ON_STEERING_WHEEL"
        case heatedSteeringWheel = "HEATED_STEERING_WHEEL"
        case steeringWheelAdjustments = "STEERING_WHEEL_ADJUSTMENTS"
        case steeringWheelTrim = "STEERING_WHEEL_TRIM"
        case audioControlsOnSteeringWheel = "AUDIO_CONTROLS_ON_STEERING_WHEEL"
        case cruiseControlsOnSteeringWheel = "CRUISE_CONTROLS_ON_STEERING_WHEEL"
    }
}

// MARK: - STEERINGWHEELProperties
struct STEERINGWHEELProperties: Codable {
    let phoneControlsOnSteeringWheel, heatedSteeringWheel, steeringWheelAdjustments, steeringWheelTrim: String
    let audioControlsOnSteeringWheel, cruiseControlsOnSteeringWheel: String

    enum CodingKeys: String, CodingKey {
        case phoneControlsOnSteeringWheel = "PHONE_CONTROLS_ON_STEERING_WHEEL"
        case heatedSteeringWheel = "HEATED_STEERING_WHEEL"
        case steeringWheelAdjustments = "STEERING_WHEEL_ADJUSTMENTS"
        case steeringWheelTrim = "STEERING_WHEEL_TRIM"
        case audioControlsOnSteeringWheel = "AUDIO_CONTROLS_ON_STEERING_WHEEL"
        case cruiseControlsOnSteeringWheel = "CRUISE_CONTROLS_ON_STEERING_WHEEL"
    }
}

// MARK: - Storage
struct Storage: Codable {
    let id: Int
    let name: String
    let properties: STORAGEProperties
    let attributes: STORAGEAttributes
}

// MARK: - STORAGEAttributes
struct STORAGEAttributes: Codable {
    let doorPocketsLocation, seatbackStorage, overheadConsole, cupholdersLocation: The1_StRowSeatType
    let cargoAreaStorageOrganizer, centerConsole: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case doorPocketsLocation = "DOOR_POCKETS_LOCATION"
        case seatbackStorage = "SEATBACK_STORAGE"
        case overheadConsole = "OVERHEAD_CONSOLE"
        case cupholdersLocation = "CUPHOLDERS_LOCATION"
        case cargoAreaStorageOrganizer = "CARGO_AREA_STORAGE_ORGANIZER"
        case centerConsole = "CENTER_CONSOLE"
    }
}

// MARK: - STORAGEProperties
struct STORAGEProperties: Codable {
    let doorPocketsLocation, seatbackStorage, overheadConsole, cupholdersLocation: String
    let cargoAreaStorageOrganizer, centerConsole: String

    enum CodingKeys: String, CodingKey {
        case doorPocketsLocation = "DOOR_POCKETS_LOCATION"
        case seatbackStorage = "SEATBACK_STORAGE"
        case overheadConsole = "OVERHEAD_CONSOLE"
        case cupholdersLocation = "CUPHOLDERS_LOCATION"
        case cargoAreaStorageOrganizer = "CARGO_AREA_STORAGE_ORGANIZER"
        case centerConsole = "CENTER_CONSOLE"
    }
}

// MARK: - StyleInfo
struct StyleInfo: Codable {
    let id: Int
    let name: String
    let properties: STYLEINFOProperties
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - STYLEINFOProperties
struct STYLEINFOProperties: Codable {
    let whereBuilt, trimLevel, vehicleSizeClass, standardVehicleDescription: String
    let estimateTmv, performance, styleProductionLaunchDate, manufacturerCode: String
    let tmvCategory, fleet, vehicleStyle, styleStartDate: String
    let primaryBodyType, longName, styleEndDate, epaClass: String
    let packageCode, styleLinkCode: String

    enum CodingKeys: String, CodingKey {
        case whereBuilt = "WHERE_BUILT"
        case trimLevel = "TRIM_LEVEL"
        case vehicleSizeClass = "VEHICLE_SIZE_CLASS"
        case standardVehicleDescription = "STANDARD_VEHICLE_DESCRIPTION"
        case estimateTmv = "ESTIMATE_TMV"
        case performance = "PERFORMANCE"
        case styleProductionLaunchDate = "STYLE_PRODUCTION_LAUNCH_DATE"
        case manufacturerCode = "MANUFACTURER_CODE"
        case tmvCategory = "TMV_CATEGORY"
        case fleet = "FLEET"
        case vehicleStyle = "VEHICLE_STYLE"
        case styleStartDate = "STYLE_START_DATE"
        case primaryBodyType = "PRIMARY_BODY_TYPE"
        case longName = "LONG_NAME"
        case styleEndDate = "STYLE_END_DATE"
        case epaClass = "EPA_CLASS"
        case packageCode = "PACKAGE_CODE"
        case styleLinkCode = "STYLE_LINK_CODE"
    }
}

// MARK: - Suspension
struct Suspension: Codable {
    let id: Int
    let name: String
    let properties: SUSPENSIONProperties
    let attributes: SUSPENSIONAttributes
}

// MARK: - SUSPENSIONAttributes
struct SUSPENSIONAttributes: Codable {
    let rearSuspensionClassification, frontSuspensionClassification, rearStabilizerBar, independentSuspension: The1_StRowSeatType
    let frontSpringType, rearSpringType, frontStabilizerBar: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case rearSuspensionClassification = "REAR_SUSPENSION_CLASSIFICATION"
        case frontSuspensionClassification = "FRONT_SUSPENSION_CLASSIFICATION"
        case rearStabilizerBar = "REAR_STABILIZER_BAR"
        case independentSuspension = "INDEPENDENT_SUSPENSION"
        case frontSpringType = "FRONT_SPRING_TYPE"
        case rearSpringType = "REAR_SPRING_TYPE"
        case frontStabilizerBar = "FRONT_STABILIZER_BAR"
    }
}

// MARK: - SUSPENSIONProperties
struct SUSPENSIONProperties: Codable {
    let rearSuspensionClassification, frontSuspensionClassification, rearStabilizerBar, independentSuspension: String
    let frontSpringType, rearSpringType, frontStabilizerBar: String

    enum CodingKeys: String, CodingKey {
        case rearSuspensionClassification = "REAR_SUSPENSION_CLASSIFICATION"
        case frontSuspensionClassification = "FRONT_SUSPENSION_CLASSIFICATION"
        case rearStabilizerBar = "REAR_STABILIZER_BAR"
        case independentSuspension = "INDEPENDENT_SUSPENSION"
        case frontSpringType = "FRONT_SPRING_TYPE"
        case rearSpringType = "REAR_SPRING_TYPE"
        case frontStabilizerBar = "FRONT_STABILIZER_BAR"
    }
}

// MARK: - The1StRowSeats
struct The1StRowSeats: Codable {
    let id: Int
    let name: String
    let properties: The1STROWSEATSProperties
    let attributes: The1STROWSEATSAttributes
}

// MARK: - The1STROWSEATSAttributes
struct The1STROWSEATSAttributes: Codable {
    let seatWhiplashProtection, numberOf1StRowHeadrests, the1StRowSeatType, the1StRowUpholstery: The1_StRowSeatType
    let adjustableSeatHeadrest: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case seatWhiplashProtection = "SEAT_WHIPLASH_PROTECTION"
        case numberOf1StRowHeadrests = "NUMBER_OF_1ST_ROW_HEADRESTS"
        case the1StRowSeatType = "1ST_ROW_SEAT_TYPE"
        case the1StRowUpholstery = "1ST_ROW_UPHOLSTERY"
        case adjustableSeatHeadrest = "ADJUSTABLE_SEAT_HEADREST"
    }
}

// MARK: - The1STROWSEATSProperties
struct The1STROWSEATSProperties: Codable {
    let seatWhiplashProtection, numberOf1StRowHeadrests, the1StRowSeatType, the1StRowUpholstery: String
    let adjustableSeatHeadrest: String

    enum CodingKeys: String, CodingKey {
        case seatWhiplashProtection = "SEAT_WHIPLASH_PROTECTION"
        case numberOf1StRowHeadrests = "NUMBER_OF_1ST_ROW_HEADRESTS"
        case the1StRowSeatType = "1ST_ROW_SEAT_TYPE"
        case the1StRowUpholstery = "1ST_ROW_UPHOLSTERY"
        case adjustableSeatHeadrest = "ADJUSTABLE_SEAT_HEADREST"
    }
}

// MARK: - The2NdRowSeats
struct The2NdRowSeats: Codable {
    let id: Int
    let name: String
    let properties: The2NDROWSEATSProperties
    let attributes: The2NDROWSEATSAttributes
}

// MARK: - The2NDROWSEATSAttributes
struct The2NDROWSEATSAttributes: Codable {
    let the2NdRowSeatType, folding2NdRow, adjustable2NdRowHeadrests, the2Nd3RDRowEasyEntry: The1_StRowSeatType
    let numberOf2NdRowHeadrests, the2NdRowCenterArmrest: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case the2NdRowSeatType = "2ND_ROW_SEAT_TYPE"
        case folding2NdRow = "FOLDING_2ND_ROW"
        case adjustable2NdRowHeadrests = "ADJUSTABLE_2ND_ROW_HEADRESTS"
        case the2Nd3RDRowEasyEntry = "2ND/3RD_ROW_EASY_ENTRY"
        case numberOf2NdRowHeadrests = "NUMBER_OF_2ND_ROW_HEADRESTS"
        case the2NdRowCenterArmrest = "2ND_ROW_CENTER_ARMREST"
    }
}

// MARK: - The2NDROWSEATSProperties
struct The2NDROWSEATSProperties: Codable {
    let the2NdRowSeatType, folding2NdRow, adjustable2NdRowHeadrests, the2Nd3RDRowEasyEntry: String
    let numberOf2NdRowHeadrests, the2NdRowCenterArmrest: String

    enum CodingKeys: String, CodingKey {
        case the2NdRowSeatType = "2ND_ROW_SEAT_TYPE"
        case folding2NdRow = "FOLDING_2ND_ROW"
        case adjustable2NdRowHeadrests = "ADJUSTABLE_2ND_ROW_HEADRESTS"
        case the2Nd3RDRowEasyEntry = "2ND/3RD_ROW_EASY_ENTRY"
        case numberOf2NdRowHeadrests = "NUMBER_OF_2ND_ROW_HEADRESTS"
        case the2NdRowCenterArmrest = "2ND_ROW_CENTER_ARMREST"
    }
}

// MARK: - TmvuFeature
struct TmvuFeature: Codable {
    let id: Int
    let name: String
    let properties: [String: String]
    let attributes: [String: The1_StRowSeatType]
}

// MARK: - TractionStabilityControl
struct TractionStabilityControl: Codable {
    let id: Int
    let name: String
    let properties: TRACTIONSTABILITYCONTROLProperties
    let attributes: TRACTIONSTABILITYCONTROLAttributes
}

// MARK: - TRACTIONSTABILITYCONTROLAttributes
struct TRACTIONSTABILITYCONTROLAttributes: Codable {
    let tractionControl, stabilityControl: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case tractionControl = "TRACTION_CONTROL"
        case stabilityControl = "STABILITY_CONTROL"
    }
}

// MARK: - TRACTIONSTABILITYCONTROLProperties
struct TRACTIONSTABILITYCONTROLProperties: Codable {
    let tractionControl, stabilityControl: String

    enum CodingKeys: String, CodingKey {
        case tractionControl = "TRACTION_CONTROL"
        case stabilityControl = "STABILITY_CONTROL"
    }
}

// MARK: - TransmissionFeatures
struct TransmissionFeatures: Codable {
    let id: Int
    let name: String
    let properties: TRANSMISSIONFEATURESProperties
    let attributes: TRANSMISSIONFEATURESAttributes
}

// MARK: - TRANSMISSIONFEATURESAttributes
struct TRANSMISSIONFEATURESAttributes: Codable {
    let brakeHillHolder: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case brakeHillHolder = "BRAKE_HILL_HOLDER"
    }
}

// MARK: - TRANSMISSIONFEATURESProperties
struct TRANSMISSIONFEATURESProperties: Codable {
    let brakeHillHolder: String

    enum CodingKeys: String, CodingKey {
        case brakeHillHolder = "BRAKE_HILL_HOLDER"
    }
}

// MARK: - Windows
struct Windows: Codable {
    let id: Int
    let name: String
    let properties: WINDOWSProperties
    let attributes: WINDOWSAttributes
}

// MARK: - WINDOWSAttributes
struct WINDOWSAttributes: Codable {
    let rearDefogger, intermittentFrontWipers, powerWindows, oneTouchWindows: The1_StRowSeatType

    enum CodingKeys: String, CodingKey {
        case rearDefogger = "REAR_DEFOGGER"
        case intermittentFrontWipers = "INTERMITTENT_FRONT_WIPERS"
        case powerWindows = "POWER_WINDOWS"
        case oneTouchWindows = "ONE_TOUCH_WINDOWS"
    }
}

// MARK: - WINDOWSProperties
struct WINDOWSProperties: Codable {
    let rearDefogger, intermittentFrontWipers, powerWindows, oneTouchWindows: String

    enum CodingKeys: String, CodingKey {
        case rearDefogger = "REAR_DEFOGGER"
        case intermittentFrontWipers = "INTERMITTENT_FRONT_WIPERS"
        case powerWindows = "POWER_WINDOWS"
        case oneTouchWindows = "ONE_TOUCH_WINDOWS"
    }
}

// MARK: - Categories
struct Categories: Codable {
    let primaryBodyType, vehicleType, vehicleStyle, market: [String]
    let vehicleSize: [String]

    enum CodingKeys: String, CodingKey {
        case primaryBodyType = "PRIMARY_BODY_TYPE"
        case vehicleType = "Vehicle Type"
        case vehicleStyle = "Vehicle Style"
        case market = "Market"
        case vehicleSize = "Vehicle Size"
    }
}

// MARK: - ConfigurableEquipment
struct ConfigurableEquipment: Codable {
    let id: String
    let priceSpecifications: [PriceSpecification]
    let includesOptionIDS: [String]

    enum CodingKeys: String, CodingKey {
        case id, priceSpecifications
        case includesOptionIDS = "includesOptionIds"
    }
}

// MARK: - PriceSpecification
struct PriceSpecification: Codable {
    let adjustedPrice: Price
    let optionPriceUpdateSpec: Bool
    let antecedent, consequent: Ent
}

// MARK: - Price
struct Price: Codable {
    let baseMSRP, baseInvoice, discountedMSRP, discountedInvoice: Int
    let deliveryCharges: Int
    let tmv: Int?
    let usedTmvRetail, usedPrivateParty, usedTradeIn: Int
    let estimateTmv: Bool
    let tmvRecommendedRating: Int?
}

// MARK: - Ent
struct Ent: Codable {
    let optionID: String

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
    }
}

// MARK: - EdTypeCategory
struct EdTypeCategory: Codable {
    let id: Int
    let name, slug: String
}

// MARK: - ModelYear
struct ModelYear: Codable {
    let id: Int
    let name: String
    let year: Int
    let publicationStates: [String]
    let href: String
}

// MARK: - StandardEngine
struct StandardEngine: Codable {
    let id, href: String
}

// MARK: - RegionRestriction
struct RegionRestriction: Codable {
    let antecedent: RegionRestrictionAntecedent
    let consequent: RegionRestrictionConsequent
}

// MARK: - RegionRestrictionAntecedent
struct RegionRestrictionAntecedent: Codable {
    let regionID: String

    enum CodingKeys: String, CodingKey {
        case regionID = "regionId"
    }
}

// MARK: - RegionRestrictionConsequent
struct RegionRestrictionConsequent: Codable {
    let feeEquipmentID: String
    let fee: Int
    let feeCalculationType: FeeCalculationType

    enum CodingKeys: String, CodingKey {
        case feeEquipmentID = "feeEquipmentId"
        case fee, feeCalculationType
    }
}

enum FeeCalculationType: String, Codable {
    case flatFee = "FLAT_FEE"
}

// MARK: - SquishVin
struct SquishVin: Codable {
    let squishVin: String
    let engineNames: [String]
    let squishVinTransmissions: [SquishVinTransmission]
}

// MARK: - SquishVinTransmission
struct SquishVinTransmission: Codable {
    let numberOfSpeeds: Int
}

// MARK: - SubModel
struct SubModel: Codable {
    let id: Int
    let name, niceID, identifier, ruleType: String
    let href: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case niceID = "niceId"
        case identifier, ruleType, href
    }
}

// MARK: - Trim
struct Trim: Codable {
    let name, niceName, slug: String
}

// MARK: - TypicallyEquippedSpecification
struct TypicallyEquippedSpecification: Codable {
    let antecedent: TypicallyEquippedSpecificationAntecedent
    let consequent: TypicallyEquippedSpecificationConsequent
}

// MARK: - TypicallyEquippedSpecificationAntecedent
struct TypicallyEquippedSpecificationAntecedent: Codable {
    let styleID: Int

    enum CodingKeys: String, CodingKey {
        case styleID = "styleId"
    }
}

// MARK: - TypicallyEquippedSpecificationConsequent
struct TypicallyEquippedSpecificationConsequent: Codable {
    let elements: [ConsequentElement]
}

// MARK: - ConsequentElement
struct ConsequentElement: Codable {
    let optionID: String?
    let elements: [PurpleElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - PurpleElement
struct PurpleElement: Codable {
    let optionID: String?
    let elements: [FluffyElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - FluffyElement
struct FluffyElement: Codable {
    let optionID: String?
    let elements: [TentacledElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - TentacledElement
struct TentacledElement: Codable {
    let optionID: String?
    let elements: [StickyElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - StickyElement
struct StickyElement: Codable {
    let optionID: String?
    let elements: [IndigoElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - IndigoElement
struct IndigoElement: Codable {
    let optionID: String?
    let elements: [IndecentElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - IndecentElement
struct IndecentElement: Codable {
    let optionID: String?
    let elements: [HilariousElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - HilariousElement
struct HilariousElement: Codable {
    let optionID: String?
    let elements: [AmbitiousElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - AmbitiousElement
struct AmbitiousElement: Codable {
    let optionID: String?
    let elements: [CunningElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - CunningElement
struct CunningElement: Codable {
    let optionID: String?
    let elements: [MagentaElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - MagentaElement
struct MagentaElement: Codable {
    let optionID: String?
    let elements: [FriskyElement]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}

// MARK: - FriskyElement
struct FriskyElement: Codable {
    let optionID: String?
    let elements: [Ent]?

    enum CodingKeys: String, CodingKey {
        case optionID = "optionId"
        case elements
    }
}
