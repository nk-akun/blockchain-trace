"use strict";

const logger = require("@hyperledger/caliper-core").CaliperUtils.getLogger(
  "my-module"
);

const driverName = [
  "chenliang",
  "lihong",
  "yaohuo",
  "jijunjun",
  "renjie",
  "wanghongrui",
];

const driverChineseName = [
  "陈亮司机",
  "李红司机",
  "姚或司机",
  "纪军军司机",
  "任杰司机",
  "王宏瑞司机",
];

const phoneNumber = [
  "16766218921",
  "18752519821",
  "15387228190",
  "13262118945",
  "19022612531",
  "147226195721",
];
const date = [
  "2022-01-01 10:23:45",
  "2022-01-02 09:23:12",
  "2022-01-03 09:12:45",
  "2022-01-04 12:32:12",
  "2022-01-05 17:23:23",
  "2022-01-06 18:23:45",
  "2022-01-07 19:23:54",
  "2022-01-08 11:23:21",
  "2022-01-09 02:23:22",
  "2022-01-10 03:23:09",
];
const long = [
  "8723987123127831283",
  "2783278387173726635",
  "9238287372631626352",
  "2663525129102082823",
  "2662152515626171289",
  "2376436461281828188",
  "3847878734738478881",
  "9291928328347474727",
];

// save the objects during init
let bc, contx, txIndex;

/**
 * Initializes the workload module before the start of the round.
 * @param {BlockchainInterface} blockchain The SUT adapter instance.
 * @param {object} context The SUT-specific context for the round.
 * @param {object} args The user-provided arguments for the workload module.
 */
module.exports.init = async (blockchain, context, args) => {
  bc = blockchain;
  contx = context;
  txIndex = 0;
  logger.debug("Initialized workload module");
};

module.exports.run = async () => {
  txIndex++;
  let randId = "Client" + this.workerIndex + "_SUBSIDY" + txIndex.toString();

  let driverIdx = Math.floor(Math.random() * driverName.length);

  let name = driverName[driverIdx];
  let chineseName = driverChineseName[driverIdx];
  let phone = phoneNumber[driverIdx];
  let department = "运输部";
  let updateDate = date[Math.floor(Math.random() * date.length)];
  let logisticsId = long[Math.floor(Math.random() * long.length)];
  let latitude = "中途定位";

  let args = {
    chaincodeFunction: "createTransport",
    chaincodeArguments: [
      randId,
      randId,
      name,
      chineseName,
      phone,
      department,
      updateDate,
      "",
      logisticsId,
      latitude,
    ],
    timeout: 30,
  };

  return bc.invokeSmartContract(contx, "drivercc", "1.0", args, 30);
};

module.exports.end = async () => {
  // Noop
  logger.debug("Disposed of workload module");
};
