export function utf8ByteLength(value: string): number {
  return new TextEncoder().encode(value).byteLength;
}

export function serializeRecipePayload(recipe: unknown, maxBytes = 4096): string {
  const serialized = JSON.stringify(recipe);
  const bytes = utf8ByteLength(serialized);
  if (bytes > maxBytes) {
    throw new Error(`Payload vượt giới hạn ${maxBytes} byte (hiện tại ${bytes} byte).`);
  }
  return serialized;
}
