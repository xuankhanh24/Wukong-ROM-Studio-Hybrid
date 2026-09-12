declare module "next/image" {
  import type { ComponentType, ImgHTMLAttributes } from "react";

  const Image: ComponentType<ImgHTMLAttributes<HTMLImageElement> & {
    fill?: boolean;
    priority?: boolean;
    quality?: number;
    unoptimized?: boolean;
  }>;

  export default Image;
}
