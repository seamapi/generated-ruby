import { generateRubySDK, writeFs } from "@seamapi/nextlove-sdk-generator";
import { openapi } from "@seamapi/types/connect";
import path from "path";
import { fileURLToPath } from "url";
import { deleteAsync } from "del";

const SDK_DIRECTORY_PREFIX = "lib/";
const PROJECT_ROOT_PATH = path.resolve(
  path.dirname(fileURLToPath(import.meta.url)),
  "../",
);
const MAIN_SDK_DIR_PATH = path.resolve(PROJECT_ROOT_PATH, SDK_DIRECTORY_PREFIX);

const main = async () => {
  try {
    await deleteAsync(MAIN_SDK_DIR_PATH);

    const rubySdkFileSystem = await generateRubySDK({
      openApiSpecObject: openapi,
    });

    const seamFiles = Object.entries(rubySdkFileSystem).filter(([fileName]) =>
      fileName.startsWith(SDK_DIRECTORY_PREFIX),
    );

    writeFs(PROJECT_ROOT_PATH, Object.fromEntries(seamFiles));

    console.log("Ruby SDK generated successfully!");
  } catch (error) {
    console.error("Failed to generate SDK:", error);
  }
};

await main();
