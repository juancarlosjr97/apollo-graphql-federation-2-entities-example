/**
 * @returns {Promise<import('jest').Config>}
 */
module.exports = async () => ({
  modulePathIgnorePatterns: ["<rootDir>/.history/"],
});
