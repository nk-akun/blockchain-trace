"use strict";

const logger = require("@hyperledger/caliper-core").CaliperUtils.getLogger(
  "my-module"
);

const traceIds = [
  "Clientundefined_SUBSIDY80",
  "Clientundefined_SUBSIDY77",
  "Clientundefined_SUBSIDY87",
  "Clientundefined_SUBSIDY49",
  "Clientundefined_SUBSIDY74",
  "Clientundefined_SUBSIDY55",
];

// save the objects during init
let bc, contx;

/**
 * Initializes the workload module before the start of the round.
 * @param {BlockchainInterface} blockchain The SUT adapter instance.
 * @param {object} context The SUT-specific context for the round.
 * @param {object} args The user-provided arguments for the workload module.
 */
module.exports.init = async (blockchain, context, args) => {
  bc = blockchain;
  contx = context;
  logger.debug("Initialized workload module");
};

module.exports.run = async () => {
  let tid = traceIds[Math.floor(Math.random() * traceIds.length)];

  let args = {
    chaincodeFunction: "queryTransportById",
    chaincodeArguments: [tid],
    timeout: 30,
  };

  return bc.querySmartContract(contx, "drivercc", "1.0", args, 30);
};

module.exports.end = async () => {
  // Noop
  logger.debug("Disposed of workload module");
};
